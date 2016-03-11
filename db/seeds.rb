# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Admin::Menu.create({id:1,               caption:'會員管理', action:'#',                            position:'side', created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});
Admin::Menu.create({id:2,               caption:'商品管理', action:'#',                            position:'side', created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});
Admin::Menu.create({id:3, parent_id:2,  caption:'類別維護', action:'admin_categories_path',seq:0,  position:'item', created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});
Admin::Menu.create({id:4, parent_id:2,  caption:'產品維護', action:'admin_products_path',  seq:1,  position:'item', created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});
Admin::Menu.create({id:5,               caption:'權限管理', action:'#',                            position:'side', created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});
Admin::Menu.create({id:6, parent_id:5,  caption:'群組維護', action:'admin_groups_path',    seq:0,  position:'item', created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});
Admin::Menu.create({id:7, parent_id:5,  caption:'選單維護', action:'admin_categories_path',seq:1,  position:'item', created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});


Admin::Group.create({id:1,caption:'平台管理者',created_at:'2016-03-10 12:00:00',updated_at:'2016-03-10 12:00:00'});
#Admin::GroupMenu.create({group_id: 1, menu_id:1,created_at:'2016-03-10 12:00:00',updated_at:'2016-03-10 12:00:00'});
