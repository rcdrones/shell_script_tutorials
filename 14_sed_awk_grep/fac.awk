function fac(n)
{
	if(n<0)
	{
		print("n must >=0");
	}
	else if(n==1)
	{
		return 1;
	}
	else
	{
		return n*fac(n-1)
	}

}

BEGIN{
	
	for(i=6;i<=10;i++)
	{
		printf("%d!=%d\n",i,fac(i));
	}
	
	
}
