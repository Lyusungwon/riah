class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## 페이스북 필요
      t.string :name,               null: false, default: ""
      t.string :uid,                null: false, default: ""
      t.string :provider,           null: false, default: ""

      ## 기본정보
      t.string :image
      t.string :nickname
      
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default:   0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_atlfsk
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
<head>
	<%= stylesheet_link_tag "hairshop", :media => "all" %>
</head>

<%= render :partial => "home/navbar" %>  

	<div id='content'>
	    <div class="mainContent">
	        <input type='hidden' id='lectureEvalData' value='[{&quot;no&quot;:&quot;260254&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;27773&quot;,&quot;mb_nick&quot;:&quot;\uc54c\ub809\uc2a4\ub9c8\uc2a4\ud130&quot;,&quot;mb_stNum&quot;:&quot;201213&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;3&quot;,&quot;eval_studyTime&quot;:&quot;2&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;3&quot;,&quot;eval_achievement&quot;:&quot;3&quot;,&quot;eval_content&quot;:&quot;\uc804\uccb4\uc801\uc73c\ub85c \uac15\uc758 \uc704\uc8fc\uc758 \uc218\uc5c5\uc774\uae30 \ub54c\ubb38\uc5d0 \ubc1c\ud45c\ub098 \uacfc\uc81c\uc5d0 \uc57d\ud558\uc2e0 \ubd84\ub4e4\uc740 \ucd94\ucc9c\ud558\ub294 \uc218\uc5c5\uc785\ub2c8\ub2e4.\r\n\ub2e8\uc9c0 \uac15\uc758\ub178\ud2b8 \uc911\uc2ec\uc758 \uac15\uc758\uae30 \ub54c\ubb38\uc5d0 \uc5ed\uc0ac\uc5d0 \uad00\uc2ec\uc788\ub294 \ubd84\ub4e4\uc774 \uc544\ub2cc \uc774\uc0c1 \uc9c0\ub8e8\ud558\uae30 \uc2ed\uc0c1\uc774\uba70\r\n\uc2dc\ud5d8\ub3c4 \uac1d\uad00\uc2dd\uc774 \ub9ce\uc774 \ub098\uc624\uae30 \ub54c\ubb38\uc5d0 \uac15\uc758\ub178\ud2b8\ub97c \uac70\uc758 \ub2ec\ub2ec \uc678\uc6b8 \uc815\ub3c4\ub294 \ub418\uc57c \uc0c1\uc704\uad8c \uc810\uc218\ub97c \ub178\ub824\ubcfc \uc218 \uc788\uc2b5\ub2c8\ub2e4 \ud558\uc9c0\ub9cc \uadf8\uc678\uc5d0\ub294 \uae4c\ub2e4\ub85c\uc6b4 \ubd80\ubd84\uc740 \uc5c6\uae30 \ub54c\ubb38\uc5d0 \uc678\uc6b0\ub294 \uac70\uc5d0 \uc790\uc2e0\uc788\ub294 \ubd84\ub4e4\uc740 \uac15\ucd94\ud558\ub294 \uc218\uc5c5\uc785\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-08-04 22:29:00&quot;,&quot;mod_time&quot;:&quot;2015-08-04 22:29:00&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;259001&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;17353&quot;,&quot;mb_nick&quot;:&quot;*_____*&quot;,&quot;mb_stNum&quot;:&quot;201313&quot;,&quot;eval_total&quot;:&quot;5&quot;,&quot;eval_difficulty&quot;:&quot;3&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;4&quot;,&quot;eval_content&quot;:&quot;\ud3c9\uac00\ub294 \uc911\uac04, \uae30\ub9d0, \ucd9c\uc11d, \ub808\ud3ec\ud2b8\ub85c \ud558\uc2ed\ub2c8\ub2e4. \uc911\uad6d\uc0ac\ud559\uc0ac\ub77c\ub294 \ucc45\uc744 \uc694\uc57d\ud55c \uac15\uc758\uc548\uc744 \ubc14\ud0d5\uc73c\ub85c \uc218\uc5c5\ud558\uc2dc\ub294\ub370 \uc0ac\uc2e4 \uc218\uc5c5 \uc548\ub4e3\uace0 \uac15\uc758\uc548\ub9cc \ub2ec\ub2ec \uc678\uc6cc\ub3c4 \uc131\uc801\uc740 \uc798 \ub098\uc624\ub294 \uac83 \uac19\uc2b5\ub2c8\ub2e4. \ucd9c\uc11d\uccb4\ud06c\ub294 \uc77c\uc8fc\uc77c\uc5d0 \ud55c\ubc88\uc815\ub3c4 \ud558\uc168\uace0 \uc2dc\ud5d8 \ubb38\uc81c\ub3c4 \uc57d\uc220\ud615\uc774\ub77c\uc11c \uc791\uc131\ud558\uae30 \ud3b8\ud588\uc2b5\ub2c8\ub2e4. \uc5ed\uc0ac\uac00\uc640 \uadf8 \ucc45\uc774 \uc5c4\uccad \ub9ce\uc774 \ub098\uc624\ub2c8\uae4c \uacf5\ubd80\ud560 \ub54c \uaf3c\uaf3c\ud558\uac8c  \uc678\uc6b0\uc154\uc57c\ud574\uc694. \uc57d\uc220\ud615 \ubb38\uc81c\uac00 ~\uc758 [\ucc45] \uc5d0 \ub300\ud574 \uc11c\uc220\ud558\uc2dc\uc624 \uc774\ub7f0 \uc2dd\uc73c\ub85c \ub098\uc624\ub294 \uac83\ub3c4 \uc788\uc5b4\uc11c!!&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-08-03 16:49:35&quot;,&quot;mod_time&quot;:&quot;2015-08-03 16:49:35&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;258033&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;7126&quot;,&quot;mb_nick&quot;:&quot;131151&quot;,&quot;mb_stNum&quot;:&quot;200815&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;3&quot;,&quot;eval_studyTime&quot;:&quot;3&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;3&quot;,&quot;eval_content&quot;:&quot;\uc775\uc219\ud55c \uc911\uad6d\uc758 \uc5ed\uc0ac\ucc45\ub4e4 \uc678\uc5d0\ub3c4 \uc0dd\uc18c\ud55c \uc0ac\ub78c\uacfc \ucc45\uc774 \ub9ce\uc774 \ub098\uc640\uc11c \ub2f9\ud669\uc2a4\ub7fd\uae30\ub3c4 \ud588\uc73c\ub098 \uc2dc\ud5d8\uc774 \ub2e8\ub2f5\uacfc \uc57d\uc220\ub85c \uc774\ub8e8\uc5b4\uc838 \ubd80\ub2f4\uc740 \uc801\uc740 \ud3b8.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-08-03 01:26:13&quot;,&quot;mod_time&quot;:&quot;2015-08-03 01:26:13&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;257919&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;121&quot;,&quot;mb_nick&quot;:&quot;\uae4c\ub9c8\uadc0&quot;,&quot;mb_stNum&quot;:&quot;200813&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;5&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;4&quot;,&quot;eval_content&quot;:&quot;\uc911\uad6d \uc0ac\ud559\uc0ac, \uc989 \uc911\uad6d\uc758 \uc0ac\ud559\uc758 \uc5ed\uc0ac\ub97c \ubc30\uc6b0\ub294 \uacfc\ubaa9\uc785\ub2c8\ub2e4.\r\n\r\n\uc120\uc9c4\uc2dc\ub300\ubd80\ud130 \uc911\ud654\ubbfc\uad6d \uc2dc\uae30 \uae4c\uc9c0\uac00 \ubc94\uc704\uad6c\uc694. \uc911\uad6d \uc5ed\uc0ac\uc5d0 \ub300\ud574 \uc9c0\uc2dd\uc774 \ubd80\uc871\ud558\uc2dc\uba74 \ub4e3\uae30 \ud798\ub4e4 \uacfc\ubaa9\uc774\ub77c \uc0dd\uac01\ud569\ub2c8\ub2e4. \uc804\uccb4 \uc911\uad6d\uc758 \uc5ed\uc0ac \uc5f0\uad6c\uc5d0 \ub300\ud574\uc11c \ub9d0\uc500\ud558\uc2dc\uc9c0\ub9cc \uc5f0\uad6c\uc758 \ub300\uc0c1\uc778 \uc5ed\uc0ac\uc5d0 \ub300\ud574\uc11c\ub294 \uc124\uba85\uc744 \ub9ce\uc774 \ud560\uc560\ud558\uc9c0 \uc54a\uc73c\uc2ed\ub2c8\ub2e4.\r\n\r\n\uc911\uad6d \uc5ed\uc0ac\uc5d0 \uad00\uc2ec\uc788\ub294 \ubd84\ub4e4\uc774 \ub4e4\uc73c\uc2dc\uba74 \uc88b\uc744 \uac83 \uac19\uc2b5\ub2c8\ub2e4.\r\n\r\n\uc2dc\ud5d8\uc740 \uc57d\uc220 7\ubb38\uc81c, \ub2e8\ub2f5 30\ubb38\uc81c\uc600\uc2b5\ub2c8\ub2e4. \uadf8\ub2e4\uc9c0 \uc5b4\ub835\uc9c0\ub294 \uc54a\uc558\uc9c0\ub9cc \ubb38\uc81c\ub294 \ubc94\uc704\uac00 \uaf64\ub098 \ub113\ub2e4\ub294 \uac83\uc785\ub2c8\ub2e4. \r\n\r\n\uadf8\ub798\ub3c4 \ubc30\uc6b0\ub294 \uac74 \ub9ce\uc740 \uacfc\ubaa9\uc774\ub77c \uc0dd\uac01\ud569\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-08-03 00:10:14&quot;,&quot;mod_time&quot;:&quot;2015-08-03 00:10:14&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;253041&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;17748&quot;,&quot;mb_nick&quot;:&quot;\uc544\ub728\uac70&quot;,&quot;mb_stNum&quot;:&quot;201313&quot;,&quot;eval_total&quot;:&quot;3&quot;,&quot;eval_difficulty&quot;:&quot;2&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;2&quot;,&quot;eval_content&quot;:&quot;\uc9c4\uc6b0\ud0b4 \uac15\uc758\ub9cc 3\ubc88 \uc9f8...\uc774\uc81c\ub294 \uc5b4\ub5bb\uac8c \ud574\uc57c \uad50\uc218\ub2d8 \uac15\uc758 \ud559\uc810\uc744 \uc798 \ubc1b\uc744 \uc218 \uc788\ub294\uc9c0 \uc54c\uace0 \uc788\uc9c0\ub9cc \uc774\ubc88 \ud559\uae30\ub294 \uc6cc\ub099 \uc5f4\uc2ec\ud788 \uc548 \uc0b4\uc544\uc11c \uc2e4\ud328\ud568. \ud56d\uc0c1 \uadf8\ub807\ub4ef\uc774 \ucd9c\uc11d+\uc911\uac04+\uae30\ub9d0+\uacfc\uc81c\ub85c \ud559\uc810\uc774 \uacb0\uc815\ub418\uace0 \uc911\uac04, \uae30\ub9d0\uc740 \uadf8 \ube44\uc911\uc758 \ucc28\uc774\uac00 \uc788\uc9c0\ub9cc \uc57d\uc220+\ub2e8\ub2f5\ud615\uc73c\ub85c \ucd9c\uc81c\ub428. \uacfc\uc81c\ub294 A4 3\uc7a5 \uc774\uc0c1 \ubd84\ub7c9\uc73c\ub85c \ubd84\ub7c9\ub9cc \ucc44\uc6b0\uba74 \ub9cc\uc810 \uc8fc\ub294 \uac83 \uac19\uc74c. \uacfc\uc81c\uc5d0\uc11c \ubcc0\ubcc4\ub825\uc740 \uc5c6\ub294 \ub4ef...\r\n\uac15\uc758 \ub0b4\uc6a9\uc740 \uc911\uad6d\uc758 \uac01 \uc2dc\ub300 \ubcc4 \uc5ed\uc0ac \uc11c\uc220 \ud48d\ud1a0, \ud559\ud30c, \ud2b9\uc9d5\uc5d0 \ub300\ud574 \ubc30\uc6b0\ub294 \uac83\uc774\ub77c\uace0 \ud560 \uc218 \uc788\ub294\ub370 \uc5ed\uc0ac\uc11c\uc640 \uadf8 \uc800\uc790\uc5d0 \ub300\ud574 \uc790\uc138\ud788 \uacf5\ubd80\ud568. \uc5b4\ub835\uc9c0 \uc54a\uc544\uc11c &#039;\uadf8\ub0e5 \uadf8\ub7f0\uac00\ubcf4\ub2e4~&#039; \ud558\uace0 \ub4e4\uc73c\uba74 \ub428. \uc0ac\uc2e4 \uac15\uc758\uc548\uc5d0 \uc815\ub9ac\uac00 \uc798 \ub418\uc5b4\uc788\uc5b4\uc11c \uac15\uc758 \uc548 \ub4e3\uace0 \uac15\uc758\uc548 \uc704\uc8fc\ub85c \uacf5\ubd80\ud574\ub3c4 \ubb34\ubc29\ud560 \ub4ef \uc2f6\uc74c. \uc9c4\uc9dc \uad50\uc218\ub2d8\uaed8\ub294 \uc8c4\uc1a1\ud558\uc9c0\ub9cc \uadf8\ub0e5 \uadf8\uc800 \uadf8\ub7f0 \uac15\uc758\ub77c\uace0 \uc0dd\uac01\ub428. \ub531\ud788 \ub354 \ud560 \ub9d0\ub3c4 \uc5c6\uc74c. \ub9c9 \ucd94\ucc9c\ud560 \ub9cc\ud55c \uac15\uc758\ub294 \uc544\ub2c8\uc9c0\ub9cc \uadf8\ub807\ub2e4\uace0 \ub4e3\uc9c0 \ub9d0\ub77c\uace0 \ub72f\uc5b4 \ub9d0\ub9b4 \uac15\uc758\ub3c4 \uc544\ub2cc \ub4ef \uc2f6\uc74c.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-30 17:14:32&quot;,&quot;mod_time&quot;:&quot;2015-07-30 17:14:32&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;250176&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;9610&quot;,&quot;mb_nick&quot;:&quot;wkdtpdns&quot;,&quot;mb_stNum&quot;:&quot;201113&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;4&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;3&quot;,&quot;eval_achievement&quot;:&quot;5&quot;,&quot;eval_content&quot;:&quot;\uc0ac\ud559\uc0ac\uc778\ub9cc\ud07c \ub0b4\uc6a9\uc774 \ub2e4\uc18c \uc5b4\ub835\uc9c0\ub9cc \uad50\uc218\ub2d8\uc758 \uc5f4\uc815\uc774 \uba4b\uc788\uace0 \ubc30\uc6cc\uac00\ub294\uac8c \ub9ce\uc740 \uc218\uc5c5\uc785\ub2c8\ub2e4.\r\n\uc2dc\ud5d8\uc740 \ub2e8\ub2f5\uc2dd\uacfc \uc57d\uc220\ud615\uc73c\ub85c \ub098\uc635\ub2c8\ub2e4. \ub2e8\ub2f5\ud615\uc740 \uc8fc\ub85c \uac15\uc758\uc548 \ube48\uce78 \ucc44\uc6cc\ub123\uae30\uc785\ub2c8\ub2e4. \uc57d\uc220\uc740 \uc218\uc5c5\uc2dc\uac04\uc5d0 \ub9d0\uc500\ud574\uc8fc\uc2e0 \ub0b4\uc6a9 \uc911\uc2ec\uc73c\ub85c \ub098\uc635\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-27 14:22:02&quot;,&quot;mod_time&quot;:&quot;2015-07-27 14:22:02&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;249150&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;24424&quot;,&quot;mb_nick&quot;:&quot;Carlisle&quot;,&quot;mb_stNum&quot;:&quot;201413&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;5&quot;,&quot;eval_studyTime&quot;:&quot;5&quot;,&quot;eval_attendance&quot;:&quot;3&quot;,&quot;eval_grade&quot;:&quot;3&quot;,&quot;eval_achievement&quot;:&quot;5&quot;,&quot;eval_content&quot;:&quot;\uac81. \ub098. \uc591\uc774 \ub9ce\uace0 \uc804. \ubd80. \uc678\uc6cc\uc57c \ud569\ub2c8\ub2e4. \uac15\uc758\uc548\ub9cc \ubcf4\uace0 \ubc11\uc904 \uce5c \ubd80\ubd84\ub4e4\ub9cc \ub2ec\ub2ec \uc678\uc6b0\uba74 \ub429\ub2c8\ub2e4. \ud544\uae30 \ud544\uc694\uc5c6\uace0 \uc218\uc5c5 \ub4e4\uc744 \ud544\uc694 \uc5c6\uc2b5\ub2c8\ub2e4. \ubb3c\ub860 \uc218\uc5c5\uc744 \ub4e4\uc73c\uba74 \uc774\ud574\uc5d0 \ub3c4\uc6c0\uc740 \uc880 \ub354 \ub418\uaca0\uc9c0\ub9cc.. \uadf8\ub0e5 \ub2ec\ub2ec \uc678\uc6b0\uace0 \uc2dc\ud5d8 \ubcf4\uc138\uc694. \ub808\ud3ec\ud2b8\ub3c4 \ubcc0\ubcc4\ub825\uc774 \uc5c6\uace0..&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-26 00:48:55&quot;,&quot;mod_time&quot;:&quot;2015-07-26 00:48:55&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;244876&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;17390&quot;,&quot;mb_nick&quot;:&quot;lucky&quot;,&quot;mb_stNum&quot;:&quot;201313&quot;,&quot;eval_total&quot;:&quot;5&quot;,&quot;eval_difficulty&quot;:&quot;5&quot;,&quot;eval_studyTime&quot;:&quot;5&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;5&quot;,&quot;eval_achievement&quot;:&quot;5&quot;,&quot;eval_content&quot;:&quot;\uad50\uc218\ub2d8\uc758 \uac15\uc758 \uc2a4\ud0c0\uc77c\uc744 \uc54c\uace0 \uc788\ub294 \ud559\uc0dd\ub4e4\uc774\ub77c\uba74 \uac15\uc758 \uc218\uac15\uc2dc \ub9e4\uc6b0 \uc720\ub9ac\ud558\ub2e4\uace0 \uc0dd\uac01\ud569\ub2c8\ub2e4. \uadf8\ub2e4\uc9c0 \uc720\ucf8c\ud55c \ub0b4\uc6a9\uc744 \ubc30\uc6b0\ub294 \uac83\uc774 \uc544\ub2c8\ub77c \uacf5\ubd80\ud560 \ub54c \ucc38 \ud798\ub4e4\uae34 \ud558\uc9c0\ub9cc \uadf8\ub798\ub3c4 \uc0ac\ud559\ub3c4\ub77c\uba74 \ud55c \ubc88\ucbe4 \ub4e3\ub294 \uac83\uc744 \ucd94\ucc9c\ud574\ub4dc\ub9bd\ub2c8\ub2e4. \ucd5c\uace0!&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-21 15:36:14&quot;,&quot;mod_time&quot;:&quot;2015-07-21 15:36:14&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;244273&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;23713&quot;,&quot;mb_nick&quot;:&quot;\ub028\ub8e8\ub028\ub028&quot;,&quot;mb_stNum&quot;:&quot;201413&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;5&quot;,&quot;eval_studyTime&quot;:&quot;5&quot;,&quot;eval_attendance&quot;:&quot;5&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;4&quot;,&quot;eval_content&quot;:&quot;\ud750\ub984\uc774 \uc5c6\uc5b4 \uacf5\ubd80\ud558\uae30 \uc5b4\ub824\uc6e0\uc74c\r\n\uc9c4\ub3c4\ub97c \ube68\ub9ac \ub098\uac00\uc2dc\ub294\ub370 \uc194\uc9c1\ud788 \uc218\uc5c5 \ub0b4\uc6a9\uc744 \uc774\ud574\ud558\uc9c4 \ubabb\ud588\uc74c\r\n\uc218\uc5c5 \ub4e4\uc740 \uc801\uc774 \ub9ce\uc774 \uc5c6\ub294 \uac83 \uac19\uc740\ub370 \uc5f4\uc2ec\ud788 \uc678\uc6e0\ub354\ub2c8 \uc131\uc801\uc740..\ud558\uc9c0\ub9cc \ub0a8\ub294 \uac74..&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-20 23:49:07&quot;,&quot;mod_time&quot;:&quot;2015-07-20 23:49:07&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;243428&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;2345&quot;,&quot;mb_nick&quot;:&quot;\ubc1c\ud30c\ub77c\uc774\uc18c&quot;,&quot;mb_stNum&quot;:&quot;201013&quot;,&quot;eval_total&quot;:&quot;3&quot;,&quot;eval_difficulty&quot;:&quot;5&quot;,&quot;eval_studyTime&quot;:&quot;5&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;3&quot;,&quot;eval_achievement&quot;:&quot;4&quot;,&quot;eval_content&quot;:&quot;\ucc45\uc774\ub984 \uc0ac\ub78c\uc774\ub984 \uc678\uc6b0\ub2e4 \uba58\ud0c8 \ube60\uac1c\uc84c\uc2b5\ub2c8\ub2e4. \uc2dc\ud5d8\uc740 \uc57d\uc220+\ub2e8\ub2f5\ud615 \ud63c\ud569, \ud559\uae30\uc911 \uacfc\uc81c\ub294 \ubcf4\uace0\uc11c 1\uac74, \ucd9c\uccb5\uc740 \uc8fc 2\ud68c \uc218\uc5c5\uc911 1\ud68c. \uadf8\uc678 \ubaa8\ub4e0\uac83\uc740 \uc554\uae30\uc554\uae30\uc554\uae30&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-20 13:41:46&quot;,&quot;mod_time&quot;:&quot;2015-07-20 13:41:46&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;239903&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;24159&quot;,&quot;mb_nick&quot;:&quot;kukulala&quot;,&quot;mb_stNum&quot;:&quot;201413&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;4&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;4&quot;,&quot;eval_content&quot;:&quot;\uc911\uad6d\uc758 \uc0ac\ud559\uc5d0 \ub300\ud55c \uc5ed\uc0ac\ub97c \ubc30\uc6b0\ub294 \uc218\uc5c5\uc774\uc5c8\uc2b5\ub2c8\ub2e4. \uc911\uad6d\uc758 \uc5ed\uc0ac\ub97c \ubc30\uc6b4\ub2e4\uae30\ubcf4\ub2e4\ub294 \uc5ed\uc0ac\uc11c\uc640 \uc5ed\uc0ac\uac00\ub97c \uc911\uc810\uc73c\ub85c \uc218\uc5c5\ud558\uc2dc\uae30 \ub54c\ubb38\uc5d0 \uc911\uad6d\uc0ac\uc5d0 \ub300\ud55c \uae30\ubcf8\uc801\uc778 \uc9c0\uc2dd\uc774 \uc788\ub294 \ubd84\uc774 \ub4e4\uc73c\uc2dc\ub294 \ud3b8\uc774 \uc218\uc6d4\ud560 \uac83 \uac19\uc2b5\ub2c8\ub2e4. \ucc98\uc74c\uc5d0\ub294 \uc0dd\uc18c\ud55c \ub0b4\uc6a9\uc774\uc5b4\uc11c \uc5b4\ub824\uc6e0\uc9c0\ub9cc \uc810\uc810 \ubc30\uc6b8\uc218\ub85d \ud765\ubbf8\ub85c\uc6b4 \ubd80\ubd84\ub3c4 \ub098\uc624\uace0 \uad50\uc218\ub2d8\uaed8\uc11c \uc911\uac04\uc911\uac04 \uc0ac\ud559\uacfc \ud559\uc0dd\ub4e4\uc5d0\uac8c \ud544\uc694\ud55c \uc870\uc5b8\ub3c4 \ud574\uc8fc\uc154\uc11c \uac1c\uc778\uc801\uc73c\ub85c\ub294 \ub9ce\uc740 \ub3c4\uc6c0\uc744 \ubc1b\uc740 \uc218\uc5c5\uc774\uc5c8\uc2b5\ub2c8\ub2e4. \ud3c9\uac00\ub294 \uc911\uac04\uace0\uc0ac, \uae30\ub9d0\uace0\uc0ac, \ubcf4\uace0\uc11c\ub85c \uc9c4\ud589\ub418\uc5c8\ub294\ub370 \uc218\uc5c5\uc758 \ub0b4\uc6a9\uc774 \ub9ce\uc544 \uc2dc\ud5d8 \uc900\ube44\ub97c \ud560 \ub54c \ub9ce\uc740 \uc591\uc744 \uc554\uae30\ud574\uc57c \ud588\ub358 \uc810\uc774 \uc870\uae08 \ud798\ub4e4\uc5c8\uc2b5\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-13 22:27:08&quot;,&quot;mod_time&quot;:&quot;2015-07-13 22:27:08&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;239343&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;6873&quot;,&quot;mb_nick&quot;:&quot;\ubfcc\uc6b0\uc6b0&quot;,&quot;mb_stNum&quot;:&quot;201113&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;3&quot;,&quot;eval_studyTime&quot;:&quot;3&quot;,&quot;eval_attendance&quot;:&quot;5&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;3&quot;,&quot;eval_content&quot;:&quot;\ub2e8\ub2f5\ud615 30\ubb38\uc81c\uc815\ub3c4\uc640 \uc57d\uc220\ud615 6\ubb38\uc81c \uac00\ub7c9\uc744 \ub0c5\ub2c8\ub2e4. \ub2e8\ub2f5\ud600\uc774 \uc788\uae30 \ub54c\ubb38\uc5d0 \uaf3c\uaf3c\ud558\uac8c \uc678\uc6cc\uc57c\ub9cc \uc2dc\ud5d8\uc810\uc218\ub97c \uc88b\uac8c \ubc1b\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uc544\uc8fc \uc791\uace0 \uad6d\uc9c0\uc801\uc778 \ubd80\ubd84\uc5d0\uc11c \ub0b4\ub294\uac74 \uc544\ub2c8\uc9c0\ub9cc \uae30\ubcf8\uc801\uc778 \ucc45\uc758 \uc774\ub984 \uc800\uc790\uc758 \uc774\ub984 \ub4f1\uc740 \ub300\ubd80\ubd84 \uc678\uc6b0\ub294\uac8c \uc88b\uc2b5\ub2c8\ub2e4. \uc2dc\ud5d8\uc740 \ubaa8\ub450 \uad50\uc218\ub2d8\uc758 \uac15\uc758\uc548\uc5d0\uc11c \ub098\uc624\uace0 \uacfc\uc81c\ub294 \ub9ac\ud3ec\ud2b8 \ud558\ub098\uac00 \uc804\ubd80\uc600\uc2b5\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-13 10:02:09&quot;,&quot;mod_time&quot;:&quot;2015-07-13 10:02:09&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;235938&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;12028&quot;,&quot;mb_nick&quot;:&quot;\ub365\ub2e4\ub354\uc6cc&quot;,&quot;mb_stNum&quot;:&quot;201213&quot;,&quot;eval_total&quot;:&quot;3&quot;,&quot;eval_difficulty&quot;:&quot;4&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;2&quot;,&quot;eval_grade&quot;:&quot;3&quot;,&quot;eval_achievement&quot;:&quot;3&quot;,&quot;eval_content&quot;:&quot;\uc0ac\ud559\uc0ac \ub0b4\uc6a9\uc774 \uc5c4\uccad \ub9ce\uae30 \ub54c\ubb38\uc5d0 \uc900\ube44\ub97c \uc5f4\uc2ec\ud788 \ud558\uc154\uc57c \uc88b\uc740 \uc810\uc218\ub97c \ubc1b\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \ud504\ub9b0\ud2b8 \uc704\uc8fc\uc758 \uc218\uc5c5\uc774\uae30\uc5d0 \uc2dc\ud5d8\uacf5\ubd80\ud558\uae30\uc5d0\ub294 \ud3b8\ud558\uc9c0\ub9cc \ucc98\uc74c \ub4e4\uc73c\uc2dc\ub294 \ubd84\ub4e4\uc5d0\uac8c\ub294 \uad49\uc7a5\ud788 \ud798\ub4e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uad50\uc218\ub2d8\uc758 \uac15\uc758 \uc804\ub2ec\ub825\ub3c4 \uc88b\uc9c0\ub294 \uc54a\uc544\uc11c \ub4e3\uae30 \uc880 \ud798\ub4e4\uc5c8\ub358 \uac15\uc758\uc600\uc2b5\ub2c8\ub2e4. \uad50\uc218\ub2d8\uc740 \uad49\uc7a5\ud788 \uc88b\uc73c\uc2e0 \ubd84\uc785\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-08 11:05:51&quot;,&quot;mod_time&quot;:&quot;2015-07-08 11:05:51&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;232792&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;23586&quot;,&quot;mb_nick&quot;:&quot;Ashii&quot;,&quot;mb_stNum&quot;:&quot;201413&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;4&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;3&quot;,&quot;eval_achievement&quot;:&quot;3&quot;,&quot;eval_content&quot;:&quot;\uc911\uac04\uace0\uc0ac\uacfc \uae30\ub9d0\uace0\uc0ac\ub294 \ub2e8\ub2f5\ud615\uacfc \uc57d\uc220\ud615\uc73c\ub85c \ub098\uc654\uc2b5\ub2c8\ub2e4. \uae30\ub9d0\uace0\uc0ac \uc804\uc5d0 10\uc810\uc9dc\ub9ac \ub808\ud3ec\ud2b8\uac00 \uc788\ub294\ub370 \uadf8 \ub0b4\uc6a9\uc740 \uac70\uc758 \ubcf4\uc2dc\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ucd9c\uc11d\uc740 \uc8fc1\ud68c \ub79c\ub364\uc73c\ub85c \ubd80\ub974\uc2ed\ub2c8\ub2e4.\r\n\ub0b4\uc6a9 \uc790\uccb4\ub294 \uc870\uae08 \ub530\ubd84\ud558\uace0 \uc9c0\ub8e8\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uc0ac\ud559\uc0ac\ub77c\ub294 \uac83\uc774 \uc560\ucd08\uc5d0 \uc5ed\uc0ac\ud559\uc758 \uc5ed\uc0ac\uc774\uae30 \ub54c\ubb38\uc5d0 \uc0dd\uc18c\ud558\uae30\ub3c4 \ud558\uace0 \ub0b4\uc6a9\uba74\uc5d0\uc11c \uc628\uac16 \ucc45 \uc774\ub984\uc744 \ub9ce\uc774 \uc678\uc6b0\ub294 \uc218\uc5c5\uc785\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;1&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-06 15:53:30&quot;,&quot;mod_time&quot;:&quot;2015-07-06 15:53:30&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;232661&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;24106&quot;,&quot;mb_nick&quot;:&quot;\ub8f0\ub77c\ub9ac\ub77c123&quot;,&quot;mb_stNum&quot;:&quot;201413&quot;,&quot;eval_total&quot;:&quot;3&quot;,&quot;eval_difficulty&quot;:&quot;5&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;3&quot;,&quot;eval_grade&quot;:&quot;3&quot;,&quot;eval_achievement&quot;:&quot;3&quot;,&quot;eval_content&quot;:&quot;\uae30\ub9d0\ub54c \ub0b4\uc6a9\uc774 \uad49\uc7a5\ud788 \ubc29\ub300\ud569\ub2c8\ub2e4. \uc131\uc801\uc740 \uc544\uc608 \ud3ec\uae30\ub9cc \uc548\ud55c\ub2e4\uba74 \ubcf4\ud1b5\uc740 \ub098\uc624\ub294 \uac15\uc758\uc785\ub2c8\ub2e4.\r\n\ucd9c\uc11d\uc740 \uae40\uc9c4\uc6b0 \uad50\uc218\ub2d8\uaed8\uc11c \ub300\ubd80\ubd84\uc758 \uac15\uc758\uc5d0\uc11c \uc8fc 1\ud68c\ub9cc \ud558\uc2dc\uace0 \ub54c\uc5d0 \ub530\ub77c \ub2e4 \ud558\uc2e4\ub54c\ub3c4 \uc788\uc2b5\ub2c8\ub2e4. \uc678\uc6cc\uc57c \ud560 \ub0b4\uc6a9\uc774 \uad49\uc7a5\ud788 \ub9ce\uace0 \uc5b4\ub835\uc2b5\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-06 15:09:05&quot;,&quot;mod_time&quot;:&quot;2015-07-06 15:09:05&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;231139&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;19451&quot;,&quot;mb_nick&quot;:&quot;\uc131\uacf5\ud558\uc790&quot;,&quot;mb_stNum&quot;:&quot;200914&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;4&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;2&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;3&quot;,&quot;eval_content&quot;:&quot;\uc2dc\ud5d8\uc740 \uc57d\uc220\ud615\uacfc \ub2e8\ub2f5\uc2dd\uc73c\ub85c \uad6c\uc131\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4. \uc911\uac04, \uae30\ub9d0 \uc678\uc5d0 \ub808\ud3ec\ud2b8 \uc81c\ucd9c\uc774 \ud3c9\uac00\uc694\uc18c \uc785\ub2c8\ub2e4. \ucd9c\uc11d\uc740 \uc790\uc8fc \ubd80\ub974\uc2dc\uc9c0 \uc54a\uc73c\uc2ed\ub2c8\ub2e4. \r\n\uac15\uc758\uc548\uc744 \uaf3c\uaf3c\ud558\uac8c \uacf5\ubd80\ud558\uc2e0\ub2e4\uba74 \uc88b\uc740 \uc131\uc801 \ubc1b\uc73c\uc2e4 \uac83\uc785\ub2c8\ub2e4.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-04 03:29:59&quot;,&quot;mod_time&quot;:&quot;2015-07-04 03:29:59&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false},{&quot;no&quot;:&quot;229356&quot;,&quot;lec_no&quot;:&quot;35564&quot;,&quot;mb_no&quot;:&quot;8826&quot;,&quot;mb_nick&quot;:&quot;\ub354\ub355\ubbf8\ub098\ub9ac&quot;,&quot;mb_stNum&quot;:&quot;200713&quot;,&quot;eval_total&quot;:&quot;4&quot;,&quot;eval_difficulty&quot;:&quot;4&quot;,&quot;eval_studyTime&quot;:&quot;4&quot;,&quot;eval_attendance&quot;:&quot;4&quot;,&quot;eval_grade&quot;:&quot;4&quot;,&quot;eval_achievement&quot;:&quot;4&quot;,&quot;eval_content&quot;:&quot;\uc911\uad6d\uc0ac\ud559\uc0ac \uac15\uc758\uc785\ub2c8\ub2e4. \uc911\uad6d \uc0ac\ud559\uc0ac\uc758 \uc8fc\uc694 \ud559\uc790\uc640 \ucc45\uc5d0 \ub300\ud574\uc11c \ubc30\uc6b0\ub294 \uc218\uc5c5\uc785\ub2c8\ub2e4. \uadf8\ub7ec\ub2e4\ubcf4\ub2c8 \ucc45 \uc774\ub984\ub3c4 \ub9ce\uc774 \uc678\uc6b0\uac8c \ub418\uace0, \ud559\uc790 \uc774\ub984\ub3c4 \ub9ce\uc774 \uc678\uc6cc\uc57c \ud574\uc11c, \uc77c\ubc18\uc801\uc778 \uc911\uad6d\uc0ac\uc218\uc5c5\ubcf4\ub2e4\ub294 \uc554\uae30\ub7c9\uc774 \ub9ce\uc740 \uac83 \uac19\uc544\uc694. \ud558\uc9c0\ub9cc \uafb8\uc900\ud788 \ubcf5\uc2b5\ud558\uba74 \ud070 \uc5b4\ub824\uc6c0 \uc5c6\uc774 \ud1b5\uacfc\ud560 \uc218 \uc788\uc73c\ub9ac\ub77c \ubd05\ub2c8\ub2e4.\r\n\uc2dc\ud5d8\uc740 \uc911\uac04\/\uae30\ub9d0 \ub2e4 \ubd05\ub2c8\ub2e4. \uacfc\ubaa9\uc758 \ud2b9\uc131\uc0c1 \ucc45 \uc81c\ubaa9\uc774\ub098 \ucc45\uc758 \ub0b4\uc6a9\uc744 \uaf3c\uaf3c\ud788 \uc678\uc6cc\uc57c \ud574\uc694.&quot;,&quot;eval_like&quot;:&quot;0&quot;,&quot;eval_comment&quot;:&quot;0&quot;,&quot;eval_hide&quot;:&quot;0&quot;,&quot;wr_term&quot;:&quot;2015-1R&quot;,&quot;wr_time&quot;:&quot;2015-07-01 23:14:26&quot;,&quot;mod_time&quot;:&quot;2015-07-01 23:14:26&quot;,&quot;eval_1&quot;:&quot;&quot;,&quot;eval_2&quot;:&quot;&quot;,&quot;eval_3&quot;:&quot;&quot;,&quot;eval_4&quot;:&quot;&quot;,&quot;eval_5&quot;:&quot;&quot;,&quot;isLiked&quot;:false}]' />
		    <input type='hidden' id='lectureSummary' value='{&quot;total&quot;:3.88,&quot;difficulty&quot;:4,&quot;studyTime&quot;:4,&quot;attendance&quot;:3.76,&quot;grade&quot;:3.65,&quot;achievement&quot;:3.65}' />
	<!--건드려야 될 부분--------------------------------->	
    	<div class="lectureInfo box">
    		<div class="top">
        		<div class="lec_name"><span><%=@hairshop.name%></span></div>
        		<div class="lec_profName"><span><%=@hairshop.address%></span></div>
        		<div class='menu'></div>
        	</div>
            <div class="lec_rating" id="lec_rating">
                <div class="e total"><div class="left">총평</div>
                <div class="right"><%=@hairshop.avg_a.round(0)%></div>
                <div class="center">
                    <% for i in(1..5)%>
                        <%if i <= @hairshop.avg_a.round(0)%>
                        <span class="active"></span>
                        <%else%>
                        <span></span>
                        <%end%>
                    <%end%>
                </div></div>		
                <div class="e difficulty"><div class="left">서비스</div><div class="right"><%=@hairshop.avg_b.round(0)%></div>
                <div class="center">
              	  	<% for i in(1..5)%>
                        <%if i <= @hairshop.avg_b.round(0)%>
                        <span class="active"></span>
                        <%else%>
                        <span></span>
                        <%end%>
                    <%end%>
                </div></div>		
                <div class="e studyTime"><div class="left">가격대</div><div class="right"><%=@hairshop.avg_c.round(0)%></div><div class="center">
                	<% for i in(1..5)%>
                        <%if i <= @hairshop.avg_c.round(0)%>
                        <span class="active"></span>
                        <%else%>
                        <span></span>
                        <%end%>
                    <%end%>
                </div></div>		
                <div class="e attendance"><div class="left">컷트</div><div class="right"><%=@hairshop.avg_d.round(0)%></div><div class="center">
                	<% for i in(1..5)%>
                        <%if i <= @hairshop.avg_d.round(0)%>
                        <span class="active"></span>
                        <%else%>
                        <span></span>
                        <%end%>
                    <%end%>
                </div></div>		
                <div class="e grade"><div class="left">파마</div><div class="right"><%=@hairshop.avg_e.round(0)%></div><div class="center">
                	<% for i in(1..5)%>
                        <%if i <= @hairshop.avg_e.round(0)%>
                        <span class="active"></span>
                        <%else%>
                        <span></span>
                        <%end%>
                    <%end%>
                </div></div>		
                <div class="e achievement"><div class="left">염색</div><div class="right"><%=@hairshop.avg_f.round(0)%></div><div class="center">
                	<% for i in(1..5)%>
                        <%if i <= @hairshop.avg_f.round(0)%>
                        <span class="active"></span>
                        <%else%>
                        <span></span>
                        <%end%>
                    <%end%>
                </div></div>	
			</div>
        	<div class="lec_info">
        		<!--년도, 학기, 코드, 학점, 이수구분, 교수님, 시간, 강의실-->
        		<div class="e"><span class='subj'>개설학기</span><span class='content' title='2015-1R'>2015-1R</span></div>
        		<div class="e"><span class='subj'>과목코드</span><span class='content' title='HOEW451-00'>HOEW451-00</span></div>
        		<div class="e2"><span class='subj'>학점</span><span class='content' title='3'>3학점</span></div>
        		<div class="e"><span class='subj'>이수구분</span><span class='content' title='전공선택'>전공선택</span></div>
        		<div class="e2"><span class='subj'>강의시간</span><span class='content' title='월(6) 서관315 수(6) 서관315 '>월(6) 서관315 수(6) 서관315 </span></div>
        	</div>
        	<div class='optionWrap'>
        		<div class="left"><button type='button' class="eval" onclick="location.href='.//<%=params[:id]%>';">평가등록</button></div>
        		
        		
        		
<div id='content'>
	<div class='mainContent'>
		<div class="eval_wrap box" style ="width:700px;">
			<div class='title'>강의평가 쓰기</div>
			<div class='desc'>
				<ul>
					<li>KLUE에는 강의를 먼저 들었던 학우들이 입력한 263,346개 이상의 강의평가가 등록되어있습니다.</li>
					<li>강의평가를 입력하여 100포인트를 모으시면 다른 학우들이 입력한 강의를 열람할 수 있습니다.</li>
					<li>KLUE는 여러분의 성의있는 강의평을 기반으로 운영됩니다.</li>
				</ul>
			</div>
		<div class="form">
			<div class="row">
				<div class="subj">강의명</div>
									<div class="content"><input type="text" id='lec_name' onkeydown='lecAC_keydown()' onkeyup='lecAC(0,event.keyCode);' onblur='lecAC_blur();' /><input type='hidden' name='lec_no' id='lec_no' /></div>
								<div id='lec_list'></div>
			</div>
			<div class="row">
				<div class="subj">별점평가</div>
				<div class="content bg1">
					<div class="e total" id='gp_total'>
						<input type='hidden' name='eval_total' value='0' />
						<div class="left">총평</div>
						<div class='right'></div>
						<div class="center">
							<div class="graphWrap" onclick="lecGraph_select('gp_total', 1)" onmouseover="lecGraph_mouseover('gp_total', 1)" onmouseout="lecGraph_mouseout('gp_total')"><span msg='최악이에요!'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_total', 2)" onmouseover="lecGraph_mouseover('gp_total', 2)" onmouseout="lecGraph_mouseout('gp_total')"><span msg='별로에요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_total', 3)" onmouseover="lecGraph_mouseover('gp_total', 3)" onmouseout="lecGraph_mouseout('gp_total')"><span msg='보통이에요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_total', 4)" onmouseover="lecGraph_mouseover('gp_total', 4)" onmouseout="lecGraph_mouseout('gp_total')"><span msg='좋아요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_total', 5)" onmouseover="lecGraph_mouseover('gp_total', 5)" onmouseout="lecGraph_mouseout('gp_total')"><span msg='최고에요!'></span></div>
						</div>
					</div>
					<div class="e difficulty" id='gp_difficulty'>
						<input type='hidden' name='eval_difficulty' value='0' />
						<div class="left">난이도</div>
						<div class='right'></div>
						<div class="center">
							<div class="graphWrap" onclick="lecGraph_select('gp_difficulty', 1)" onmouseover="lecGraph_mouseover('gp_difficulty', 1)" onmouseout="lecGraph_mouseout('gp_difficulty')"><span msg='짱쉬워요!'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_difficulty', 2)" onmouseover="lecGraph_mouseover('gp_difficulty', 2)" onmouseout="lecGraph_mouseout('gp_difficulty')"><span msg='조금 쉬워요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_difficulty', 3)" onmouseover="lecGraph_mouseover('gp_difficulty', 3)" onmouseout="lecGraph_mouseout('gp_difficulty')"><span msg='보통이에요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_difficulty', 4)" onmouseover="lecGraph_mouseover('gp_difficulty', 4)" onmouseout="lecGraph_mouseout('gp_difficulty')"><span msg='조금 어려워요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_difficulty', 5)" onmouseover="lecGraph_mouseover('gp_difficulty', 5)" onmouseout="lecGraph_mouseout('gp_difficulty')"><span msg='짱어려워요!'></span></div>
						</div>
					</div>
					<div class="e studyTime" id='gp_studyTime'>
						<input type='hidden' name='eval_studyTime' value='0' />
						<div class="left">학습량</div>
						<div class='right'></div>
						<div class="center">
							<div class="graphWrap" onclick="lecGraph_select('gp_studyTime', 1)" onmouseover="lecGraph_mouseover('gp_studyTime', 1)" onmouseout="lecGraph_mouseout('gp_studyTime')"><span msg='완전 적어요!'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_studyTime', 2)" onmouseover="lecGraph_mouseover('gp_studyTime', 2)" onmouseout="lecGraph_mouseout('gp_studyTime')"><span msg='조금 적어요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_studyTime', 3)" onmouseover="lecGraph_mouseover('gp_studyTime', 3)" onmouseout="lecGraph_mouseout('gp_studyTime')"><span msg='보통이에요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_studyTime', 4)" onmouseover="lecGraph_mouseover('gp_studyTime', 4)" onmouseout="lecGraph_mouseout('gp_studyTime')"><span msg='조금 많아요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_studyTime', 5)" onmouseover="lecGraph_mouseover('gp_studyTime', 5)" onmouseout="lecGraph_mouseout('gp_studyTime')"><span msg='완전 많아요!'></span></div>
						</div>
					</div>
					<div class="e attendance" id='gp_attendance'>
						<input type='hidden' name='eval_attendance' value='0' />
						<div class="left">출석체크</div>
						<div class='right'></div>
						<div class="center">
							<div class="graphWrap" onclick="lecGraph_select('gp_attendance', 1)" onmouseover="lecGraph_mouseover('gp_attendance', 1)" onmouseout="lecGraph_mouseout('gp_attendance')"><span msg='거의 안해요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_attendance', 2)" onmouseover="lecGraph_mouseover('gp_attendance', 2)" onmouseout="lecGraph_mouseout('gp_attendance')"><span msg='가끔 해요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_attendance', 3)" onmouseover="lecGraph_mouseover('gp_attendance', 3)" onmouseout="lecGraph_mouseout('gp_attendance')"><span msg='보통이에요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_attendance', 4)" onmouseover="lecGraph_mouseover('gp_attendance', 4)" onmouseout="lecGraph_mouseout('gp_attendance')"><span msg='자주 해요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_attendance', 5)" onmouseover="lecGraph_mouseover('gp_attendance', 5)" onmouseout="lecGraph_mouseout('gp_attendance')"><span msg='항상 해요'></span></div>
						</div>
					</div>
					<div class="e grade" id='gp_grade'>
						<input type='hidden' name='eval_grade' value='0' />
						<div class="left">학점</div>
						<div class='right'></div>
						<div class="center">
							<div class="graphWrap" onclick="lecGraph_select('gp_grade', 1)" onmouseover="lecGraph_mouseover('gp_grade', 1)" onmouseout="lecGraph_mouseout('gp_grade')"><span msg='전설의총잡이! FF'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_grade', 2)" onmouseover="lecGraph_mouseover('gp_grade', 2)" onmouseout="lecGraph_mouseout('gp_grade')"><span msg='안주는 편'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_grade', 3)" onmouseover="lecGraph_mouseover('gp_grade', 3)" onmouseout="lecGraph_mouseout('gp_grade')"><span msg='보통이에요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_grade', 4)" onmouseover="lecGraph_mouseover('gp_grade', 4)" onmouseout="lecGraph_mouseout('gp_grade')"><span msg='잘주는 편'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_grade', 5)" onmouseover="lecGraph_mouseover('gp_grade', 5)" onmouseout="lecGraph_mouseout('gp_grade')"><span msg='에이쁠폭격기!'></span></div>
						</div>
					</div>
					<div class="e achievement" id='gp_achievement'>
						<input type='hidden' name='eval_achievement' value='0' />
						<div class="left">성취감</div>
						<div class='right'></div>
						<div class="center">
							<div class="graphWrap" onclick="lecGraph_select('gp_achievement', 1)" onmouseover="lecGraph_mouseover('gp_achievement', 1)" onmouseout="lecGraph_mouseout('gp_achievement')"><span msg='뭘배웠는지ㅜㅜ'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_achievement', 2)" onmouseover="lecGraph_mouseover('gp_achievement', 2)" onmouseout="lecGraph_mouseout('gp_achievement')"><span msg='조금 적어요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_achievement', 3)" onmouseover="lecGraph_mouseover('gp_achievement', 3)" onmouseout="lecGraph_mouseout('gp_achievement')"><span msg='보통이에요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_achievement', 4)" onmouseover="lecGraph_mouseover('gp_achievement', 4)" onmouseout="lecGraph_mouseout('gp_achievement')"><span msg='조금 많아요'></span></div>
							<div class="graphWrap" onclick="lecGraph_select('gp_achievement', 5)" onmouseover="lecGraph_mouseover('gp_achievement', 5)" onmouseout="lecGraph_mouseout('gp_achievement')"><span msg='많이배웠어요!'></span></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="subj">평가내용</div>
				<div class="content"><textarea id='eval_content' name='eval_content' onkeyup='show_textCnt();' placeholder='평가 내용을 입력해주세요.'></textarea><div id="textCnt"></div></div>
			</div>
			<div class="btnWrap">
				<button type='button' onclick='doSubmit();'>평가하기</button>
			</div>
		</div>
	</div>
</div>



</div><!--div id=content-->
        		
        		
        		
        		
        	</div>
        </div><!--infobox-->
    <div class='lectureEvalListTitle'>이 강의에 대한 평가</div>
    <!-----------------------------후기 시작-------------------------------------->
    <!--후기 나열-->
    <div class='lectureEvalList'>
	    <% @hairshop.evals.each do |h|%>
	    	<div class="e" id="lecEval_263352">							
	    		<div class="content">					
	    			<div class="right">						
	    				<div class="e total">
	    					<div class="left">총평</div>
	    					<div class="center">    		  
	    					    <span class="star-rating" style="height: 20px;width: 100px;"><!--별이 다 안나옴ㅠ-->
	                		        <% 1.upto(5) do |i|%>	
	                		        	<%if i==h.rating_a.to_i%>
	                		        	<i class="on"></i>
	                		        	<%else%>
	                		        	<i></i>
	                		        	<%end%>
	                		        <%end%>
	            		   </span>
	    		            </div>
	    				</div>						
						<div class="e difficulty">
						    <div class="left">서비스</div>
					        <div class="center">
	        		        <% for i in(1..5)%>
		                        <%if i <= h.rating_b.to_i%>
		                        <span class="active"></span>
		                        <%else%>
		                        <span></span>
		                        <%end%>
		                    <%end%>
					        </div>
					    </div>						
						<div class="e studyTime">
						    <div class="left">가격대</div>
					        <div class="center">
	        		        <% for i in(1..5)%>
		                        <%if i <= h.rating_c.to_i%>
		                        <span class="active"></span>
		                        <%else%>
		                        <span></span>
		                        <%end%>
		                    <%end%>
					        </div>
						</div>						
						<div class="e attendance">					    
						    <div class="left">커트</div>
					        <div class="center">
	        		        <% for i in(1..5)%>
		                        <%if i <= h.rating_d.to_i %>
		                        <span class="active"></span>
		                        <%else%>
		                        <span></span>
		                        <%end%>
		                    <%end%>
					        </div>
	                    </div>						
						<div class="e grade">
						    <div class="left">파마</div>
					        <div class="center">
	        		        <% for i in(1..5)%>
		                        <%if i <= h.rating_e.to_i%>
		                        <span class="active"></span>
		                        <%else%>
		                        <span></span>
		                        <%end%>
		                    <%end%>
		                    </div>
						</div>						
						<div class="e achievement">
					        <div class="left">염색</div>
					        <div class="center">
	        		        <% for i in(1..5)%>
		                        <%if i <= h.rating_f.to_i%>
		                        <span class="active"></span>
		                        <%else%>
		                        <span></span>
		                        <%end%>
		                    <%end%>
					        </div>
						</div>					
					</div>
					
					<div class="left">						
						<div class="wrInfo"><a href="./myLectureEval.php?mbNo=10600" class="bold">회원</a> 님의
						</div>						
						<div class="wrInfoSub" title="2015-09-15 14:51:23">(201219****) | 4시간 전</div>						
						<div class="wrContent">
						<%=h.content%>
						<%for i in (0..h.images.size-1)%>
						    <img src="<%=h.images[i].url%>"/>
						<%end%>
						</div>					
					</div>			
				</div>				
				<div class="tail">					
					<div class="btnWrap">
						<span class="like" likecnt="0" onclick="lectureEvalList_like(263352)">0 좋아요</span>
						<span class="comment" onclick="lectureEvalList_getEvalCommentList(263352);">0 댓글</span>
						<span class="etc" onclick="location.href=yh_path+'/report.php?evalNo=263352'">신고</span>
					</div>
					<!--
					<div class="commentList hide"></div>					
	    			<div class="commentInput hide">						
	        			<div class="right">
	        				<button type="button" onclick="lectureEvalList_writeEvalComment(263352)">입력</button>
	        			</div>						
	        			<div class="left">
	        				<input type="text" name="wr_content" onkeydown="if (event.keyCode==13) lectureEvalList_writeEvalComment(263352);" placeholder="댓글을 입력해주세요.">
	        			</div>
	        		</div>
	        		-->
	        	</div>			
	        </div>

        <% end %>
        
        <% if user_signed_in? %>
            <%= form_tag '/home/write_process',method:'post', html: {:class => "form-horizontal"}, multipart: true do %>
                  <!--<form class="form-horizontal" action="/trend/reply">-->
                  <input type="hidden" name="hairshop_id" value="<%=@hairshop.id%>">
                      <!--댓글 공간 시작-->
                    <fieldset>
                          <legend style="font-family: sans-serif">댓글</legend>
                          <div class="form-group">
                              <div style="margin:20px, auto">
                              <p><%=current_user.email%></p></div>
                           <!--댓글 내 별점 공간-->
                          <div class="form-group" >
                            <p>총평</p>
                              <span class="star-rating small">
                                <input type="radio" name="rating_a" value="1"><i></i>
                                <input type="radio" name="rating_a" value="2"><i></i>
                                <input type="radio" name="rating_a" value="3"><i></i>
                                <input type="radio" name="rating_a" value="4"><i></i>
                                <input type="radio" name="rating_a" value="5"><i></i>
                              </span>
                            <p>가격</p>
                              <span class="star-rating small">
                                <input type="radio" name="rating_b" value="1"><i></i>
                                <input type="radio" name="rating_b" value="2"><i></i>
                                <input type="radio" name="rating_b" value="3"><i></i>
                                <input type="radio" name="rating_b" value="4"><i></i>
                                <input type="radio" name="rating_b" value="5"><i></i>
                              </span>
                           </div>
                          
                           <div class="form-group">
                            <p>실력</p>
                              <span class="star-rating small">
                                <input type="radio" name="rating_c" value="1"><i></i>
                                <input type="radio" name="rating_c" value="2"><i></i>
                                <input type="radio" name="rating_c" value="3"><i></i>
                                <input type="radio" name="rating_c" value="4"><i></i>
                                <input type="radio" name="rating_c" value="5"><i></i>
                              </span>
                           </div>
                           <div class="form-group">
                            <p>시설.서비스</p>
                              <span class="star-rating small">
                                <input type="radio" name="rating_d" value="1"><i></i>
                                <input type="radio" name="rating_d" value="2"><i></i>
                                <input type="radio" name="rating_d" value="3"><i></i>
                                <input type="radio" name="rating_d" value="4"><i></i>
                                <input type="radio" name="rating_d" value="5"><i></i>
                              </span>
                           </div>
                           <div class="form-group">
                            <p>펌</p>
                              <span class="star-rating small">
                                <input type="radio" name="rating_e" value="1"><i></i>
                                <input type="radio" name="rating_e" value="2"><i></i>
                                <input type="radio" name="rating_e" value="3"><i></i>
                                <input type="radio" name="rating_e" value="4"><i></i>
                                <input type="radio" name="rating_e" value="5"><i></i>
                              </span>
                           </div>
                           <div class="form-group">
                            <p>염색</p>
                              <span class="star-rating small">
                                <input type="radio" name="rating_f" value="1"><i></i>
                                <input type="radio" name="rating_f" value="2"><i></i>
                                <input type="radio" name="rating_f" value="3"><i></i>
                                <input type="radio" name="rating_f" value="4"><i></i>
                                <input type="radio" name="rating_f" value="5"><i></i>
                              </span>
                           </div>
                           <!-- 댓글 텍스트 쓰는공간-->
                            <label for="textArea" class="col-lg-2 control-label">Textarea</label>
                            <div class="col-lg-10">
                              <textarea class="form-control" rows="3" name="content"></textarea>
                              <span style="font-family: sans-serif" class="help-block">댓글을 남겨주세요</span>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="exampleInputPassword1">암호</label>
                            <input type="password" class="form-control" name="password" placeholder="암호">
                          </div>
        
                          
                        <div class="form-group">
                            <label for="exampleInputFile">이미지파일 업로드</label>
                            <input type="file" name="images" multiple>
                            <p class="help-block">예제</p>
                          </div>
                         
                          <div class="form-group" id="submit">
                            <div class="col-lg-8 col-lg-offset-2">
                              <button type="submit" class="btn btn-primary">GO</button>
                            </div>
                          </div>
                        </fieldset>
                        
                <%end%>
                
                          
       <%end%>
           
        <script>
          $(document).ready(function(){
            $("#submit").click(function(){
              alert("소중한 후기 감사합니다");
            });
          });
        </script> 
    </div>
  
</div>
<%= render :partial => "home/sidebar1" %> 
</div>
<%= render :partial => "home/tail" %>   
