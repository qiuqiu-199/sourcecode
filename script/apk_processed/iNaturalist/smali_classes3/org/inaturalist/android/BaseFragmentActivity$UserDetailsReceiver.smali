.class Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserDetailsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseFragmentActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/BaseFragmentActivity;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/BaseFragmentActivity;Lorg/inaturalist/android/BaseFragmentActivity$1;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p1, "BaseFragmentActivity"

    const-string v0, "Got GET_USER_DETAILS_RESULT"

    .line 563
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "user"

    .line 564
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "authentication_failed"

    const/4 v1, 0x0

    .line 565
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 569
    new-instance p2, Landroid/content/Intent;

    iget-object v2, p0, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-class v3, Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    const-string v2, "signup"

    .line 570
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "password_changed"

    .line 571
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    iget-object v2, p0, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {v2, p2}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 579
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-string v2, "iNaturalistPreferences"

    invoke-virtual {p2, v2, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 580
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "observation_count"

    const-string v4, "observations_count"

    .line 582
    invoke-virtual {p1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "medium_user_icon_url"

    .line 583
    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "medium_user_icon_url"

    :goto_0
    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "user_icon_url"

    goto :goto_0

    :goto_1
    const-string v4, "user_icon_url"

    .line 584
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "user_bio"

    const-string v4, "description"

    .line 585
    invoke-virtual {p1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "user_email"

    const-string v4, "email"

    .line 586
    invoke-virtual {p1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "user_full_name"

    const-string v4, "name"

    .line 587
    invoke-virtual {p1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "last_user_details_refresh_time"

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "username"

    const/4 v4, 0x0

    .line 589
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "login"

    .line 590
    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    .line 592
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 594
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "user_login"

    .line 595
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_synced_at"

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 599
    iget-object v5, p0, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {v5}, Lorg/inaturalist/android/BaseFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "user_login = ?"

    new-array v8, v0, [Ljava/lang/String;

    aput-object p2, v8, v1

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string v5, "BaseFragmentActivity"

    const-string v6, "Updated %d observations with new user login %s from %s"

    const/4 v7, 0x3

    .line 600
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    aput-object v3, v7, v0

    const/4 v0, 0x2

    aput-object p2, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string p2, "username"

    .line 603
    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p2, "site_id"

    .line 607
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 609
    iget-object p2, p0, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {p2}, Lorg/inaturalist/android/BaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/INaturalistApp;

    .line 610
    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->getINatNetworks()[Ljava/lang/String;

    move-result-object v0

    .line 611
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 613
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inat_site_id_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 616
    invoke-virtual {p2, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setInaturalistNetworkMember(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 620
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 625
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/BaseFragmentActivity;->refreshUserDetails()V

    return-void
.end method
