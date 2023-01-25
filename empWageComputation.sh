echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
empHrs=0;
totalSalary=0;
totalworkingHour=0;
empRatePerHr=20;
numworkingDays=20;
day=1;

declare -A day
function calculateworkingHour() {
	case $randomCheck in
		    $isFullTime)
		    empHrs=8;;
		    $isPartTime)
		     empHrs=4;;
		     *)
		     empHrs=0;;
esac
	echo $empHrs;
}
while [[ $day -le 20 && $totalworkingHour -lt 100 ]]
do
randomCheck=$((RANDOM%3));
		wHour=$(calculateworkingHour $randomCheck);
		totalworkingHour=$(($totalworkingHour + $wHour));
		if [ $totalworkingHour -gt 100 ]
		then
			totalworkingHour=$(($totalworkingHour - $wHour));
			break;
		fi
		salary=$(($empRatePerHr*$wHour));
		totalSalary=$(($totalSalary+$salary));
		((day++))
echo "Employee Daily Wage: "${salary[@]}
echo "Employee Total Wage: "${totalSalary[*]}
echo "Employee Day wise wage: "${day[@]}
done
echo "Employee has earned $totalSalary $ in a month(Total working Hour : $totalworkingHour)";
