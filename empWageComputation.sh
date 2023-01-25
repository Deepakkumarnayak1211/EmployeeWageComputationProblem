echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
empHrs=0;
totalSalary=0;
totalworkingHour=0;
empRatePerHr=20;
numworkingDays=20;
day=1;

while [[ $day -le 20 && $totalworkingHour -lt 100 ]]
do

randomCheck=$((RANDOM%3));
case $randomCheck in $isFullTime)
		     empHrs=8;;
                     $isPartTime)
                     empHrs=4;;
                     *)
                     empHrs=0;;
esac

totalworkingHour=$(($totalworkingHour+$empHrs))

if [ $totalworkingHour -gt 100 ]
then
totalworkingHour=$(($totalworkingHour-$empHrs))
break;
fi
salary=$(($empRatePerHr*$empHrs))
totalSalary=$(($totalSalary+$salary))
((day++))
done

echo "Employee has earned $totalSalary $ in a month(Total working Hour : $totalworkingHour)";
