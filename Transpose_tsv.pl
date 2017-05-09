#Transposes tab seperated plain text (.tsv) matrix form 
	open (FILE, "infile.tsv");
	open (OUT, ">transposed.txt");
	@all_data=<FILE>;
	my @temp1=split/\t/,$all_data[0];
	my $all_count=@temp1; 
	for my $index(0..$all_count){
		foreach (@all_data){
			$_=~s/\r|\n|\r\n//;
			my @temp2=split/\t/,$_;
			print OUT $temp2[$index]."\t";
		}
		print OUT "\n";
	}
	close FILE;
	close OUT;
	undef @temp1;
	undef @temp2;
	undef @all_data;


