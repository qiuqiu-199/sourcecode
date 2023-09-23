.class Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserDetailsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 1455
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V
    .locals 0

    .line 1455
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void
.end method

.method private actionToResultsParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "user_details_result"

    .line 1551
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "user"

    return-object p1

    :cond_0
    const-string v0, "species_count_result"

    .line 1553
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "species_count_result"

    return-object p1

    :cond_1
    const-string v0, "user_observations_result"

    .line 1555
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "observations"

    return-object p1

    :cond_2
    const-string v0, "identifications_result"

    .line 1557
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "identifications"

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1458
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "username"

    .line 1460
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1462
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "error"

    .line 1467
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1469
    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationListActivity;->access$4300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p2

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const v2, 0x7f10010b

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ObservationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "is_shared_on_app"

    .line 1473
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1479
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    .line 1481
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->actionToResultsParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_5

    .line 1488
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "identifications_result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1489
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput v0, p1, Lorg/inaturalist/android/ObservationListActivity;->mTotalIdentifications:I

    .line 1490
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    goto :goto_1

    .line 1491
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "species_count_result"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1492
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput v0, p1, Lorg/inaturalist/android/ObservationListActivity;->mTotalSpecies:I

    .line 1493
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    .line 1495
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$900(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void

    :cond_5
    if-eqz p1, :cond_b

    .line 1500
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_details_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1502
    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p2, Lorg/inaturalist/android/ObservationListActivity;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    .line 1504
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string p2, "observations_count"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string p2, "observation_count"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1505
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1506
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "observation_count"

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationListActivity;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "observations_count"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1509
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationListActivity;->refreshUserDetails()V

    .line 1511
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$900(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void

    .line 1514
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "species_count_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifications_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1516
    :cond_8
    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "total_results"

    .line 1517
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const-string v1, "total_results"

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    const-string v2, "results"

    .line 1518
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1519
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_3

    :cond_a
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_3

    :cond_b
    move-object p1, v1

    const/4 v1, 0x0

    .line 1523
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_c

    .line 1526
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$900(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void

    .line 1530
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 1532
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1533
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    .line 1535
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1539
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "species_count_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1540
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput-object v2, p1, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    .line 1541
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput v1, p1, Lorg/inaturalist/android/ObservationListActivity;->mTotalSpecies:I

    goto :goto_6

    .line 1542
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "identifications_result"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1543
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput-object v2, p1, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    .line 1544
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput v1, p1, Lorg/inaturalist/android/ObservationListActivity;->mTotalIdentifications:I

    .line 1547
    :cond_f
    :goto_6
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$900(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void
.end method
