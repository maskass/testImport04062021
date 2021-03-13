void plot(string input_file = "out50.dat"){

	TGraph * gCoulomb = new TGraph(input_file.c_str(), "%lg %*lg %lg");            // 1st and 3rd column
	TGraph * gStrong  = new TGraph(input_file.c_str(), "%lg %*lg %*lg %lg");       // 1st and 4th column
	TGraph * gSum     = new TGraph(input_file.c_str(), "%lg %*lg %*lg %*lg %lg");  // 1st and 5th column

	// line width
	int linew = 3;
	gCoulomb->SetLineWidth(linew);
	gStrong->SetLineWidth(linew);
	gSum->SetLineWidth(linew);

	// colors
	gCoulomb->SetLineColor(kGreen-2);
	gStrong->SetLineColor(kRed-3);
	gSum->SetLineColor(kGray+2);

	// multigraph
	TMultiGraph * mg = new TMultiGraph();
	mg->Add(gCoulomb);
	mg->Add(gStrong);
	mg->Add(gSum);

	// legend
	TLegend * leg = new TLegend(0.6, 0.6, 0.85, 0.85);
	leg->AddEntry(gCoulomb, "Coulomb", "l");
	leg->AddEntry(gStrong, "Strong", "l");
	leg->AddEntry(gSum, "Coulomb + Strong", "l");

	TCanvas *  c = new TCanvas();
	c->SetLogy();
	mg->Draw("AL");
	mg->GetYaxis()->SetTitle("dsigma/domega amplitudes");	
	mg->GetXaxis()->SetTitle("Theta (degrees)");
	leg->Draw();
	c->SaveAs("fig/fig.pdf");
}