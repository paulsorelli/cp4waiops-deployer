#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# DO NOT MODIFY BELOW
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------------------------------------------
#  Deactivating MYSQL Service
#------------------------------------------------------------------------------------------------------------------------------------
echo " "
echo "   ------------------------------------------------------------------------------------------------------------------------------"
echo "   🚀  Deactivating Services for RATINGS for Demo Scenario..."
echo "   ------------------------------------------------------------------------------------------------------------------------------"
oc patch service mysql -n robot-shop --patch '{"spec": {"selector": {"service": "mysql-outage"}}}'
#oc set env deployment ratings -n robot-shop PDO_URL=mysql:host=mysql-outage;dbname=ratings;charset=utf8mb4
#oc set env deployment ratings -n robot-shop CATALOGUE_URL=catalogue


echo " "
echo "   ------------------------------------------------------------------------------------------------------------------------------"
echo "   🚀  Deactivating Services for CATALOGUE for Demo Scenario..."
echo "   ------------------------------------------------------------------------------------------------------------------------------"
oc set env deployment catalogue -n robot-shop MONGO_URL=mongodb://mongodb-outage:27017/catalogue
#oc set env deployment catalogue -n robot-shop GO_SLOW=1



# echo " "
# echo "   ------------------------------------------------------------------------------------------------------------------------------"
# echo "   🚀  Deactivating Services for USERS for Demo Scenario..."
# echo "   ------------------------------------------------------------------------------------------------------------------------------"
# oc set env deployment user -n robot-shop MONGO_URL=mongodb://mongodb-outage:27017/users
# oc set env deployment user -n robot-shop REDIS_HOST=redis-outage


# echo " "
# echo "   ------------------------------------------------------------------------------------------------------------------------------"
# echo "   🚀  Deactivating Services for CART for Demo Scenario..."
# echo "   ------------------------------------------------------------------------------------------------------------------------------"
# oc set env deployment user -n robot-shop CATALOGUE_HOST=catalogue
# oc set env deployment user -n robot-shop REDIS_HOST=redis


# echo " "
# echo "   ------------------------------------------------------------------------------------------------------------------------------"
# echo "   🚀  Deactivating Services for WEB for Demo Scenario..."
# echo "   ------------------------------------------------------------------------------------------------------------------------------"
# oc set env deployment web -n robot-shop RATINGS_HOST=ratings
# oc set env deployment web -n robot-shop CATALOGUE_HOST=catalogue
# oc set env deployment web -n robot-shop USER_HOST=user
# oc set env deployment web -n robot-shop CART_HOST=cart
# oc set env deployment web -n robot-shop SHIPPING_HOST=shipping
# oc set env deployment web -n robot-shop PAYMENT_HOST=payment
# oc set env deployment web -n robot-shop RATINGS_HOST=ratings


