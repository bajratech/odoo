#! /bin/bash

DHI_DYNAMIC_COLOR_REPO="git@git.bajrallc.com:gekkaBee/dhi-dynamic-color.git"
DHI_STOCK_ACCOUNT_REPO="git@git.bajrallc.com:rameshwordhakal/dhi_stock_account.git"
DHI_POS_REPO="git@git.bajrallc.com:rameshwordhakal/dhi_point_of_sale.git"
DHI_NOTIFICATION_REPO="git@git.bajrallc.com:rameshwordhakal/dhi_notifications.git"
DHI_ENCOUNTERS_REPO="git@git.bajrallc.com:gekkaBee/dhi_encounters_and_events.git"
DHI_HR_REPO="git@git.bajrallc.com:gekkaBee/dhi_hr.git"
DHI_HR_CONTRACT_REPO="git@git.bajrallc.com:gekkaBee/dhi_hr_contract.git"
DHI_HR_ATTENDANCE_REPO="git@git.bajrallc.com:gekkaBee/dhi_hr_attendance.git"
DHI_ACCOUNT_REPO="git@git.bajrallc.com:gekkaBee/dhi_account.git"
DHI_STOCK_REPO="git@git.bajrallc.com:rameshwordhakal/dhi_stock.git"
DHI_MRP_REPO="git@git.bajrallc.com:sbasnet/dhi_mrp.git"
DHI_BILLING_REPO="git@git.bajrallc.com:gekkaBee/dhi_billing.git"
DHI_APPOINTMENTS_REPO="git@git.bajrallc.com:rameshwordhakal/dhi_appointments.git"
DHI_LAB_REPO="git@git.bajrallc.com:gekkaBee/dhi_lab.git"
DHI_PRODUCT_REPO="git@git.bajrallc.com:rameshwordhakal/dhi_product.git"
DHI_PURCHASE_REPO="git@git.bajrallc.com:gekkaBee/dhi_purchase.git"
DHI_PATIENT_RECORD_REPO="git@git.bajrallc.com:gekkaBee/dhi_patient_record.git"

CUSTOM_MODULES="custom_modules"
if [ ! -d "$CUSTOM_MODULES" ]; then
  mkdir ./${CUSTOM_MODULES}
fi

cd ${CUSTOM_MODULES}

declare -a repos=("$DHI_DYNAMIC_COLOR_REPO" "$DHI_STOCK_ACCOUNT_REPO" "$DHI_POS_REPO" 
                  "$DHI_NOTIFICATION_REPO" "$DHI_ENCOUNTERS_REPO" "$DHI_HR_REPO" 
                  "$DHI_HR_CONTRACT_REPO" "$DHI_HR_ATTENDANCE_REPO" "$DHI_ACCOUNT_REPO" 
		              "$DHI_STOCK_REPO" "$DHI_MRP_REPO" "$DHI_BILLING_REPO" "$DHI_APPOINTMENTS_REPO" 
                  "$DHI_LAB_REPO" "$DHI_PRODUCT_REPO" "$DHI_PURCHASE_REPO" "$DHI_PATIENT_RECORD_REPO")

for i in "${repos[@]}"
do
  git submodule add "$i"
done
