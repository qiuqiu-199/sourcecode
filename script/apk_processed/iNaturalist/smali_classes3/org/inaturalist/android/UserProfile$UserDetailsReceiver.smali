.class Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserDetailsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserProfile;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/UserProfile;Lorg/inaturalist/android/UserProfile$1;)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;-><init>(Lorg/inaturalist/android/UserProfile;)V

    return-void
.end method

.method private actionToResultsParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "user_details_result"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "user"

    return-object p1

    :cond_0
    const-string v0, "species_count_result"

    .line 566
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "species_count_result"

    return-object p1

    :cond_1
    const-string v0, "user_observations_result"

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "observations"

    return-object p1

    :cond_2
    const-string v0, "identifications_result"

    .line 570
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

    .line 487
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 488
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 490
    iget-object p2, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p2}, Lorg/inaturalist/android/UserProfile;->access$700(Lorg/inaturalist/android/UserProfile;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p2

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    const v2, 0x7f10010b

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/UserProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "username"

    .line 494
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object v1, v1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string p1, "is_shared_on_app"

    .line 501
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 507
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p1}, Lorg/inaturalist/android/UserProfile;->access$800(Lorg/inaturalist/android/UserProfile;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->actionToResultsParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 515
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p1}, Lorg/inaturalist/android/UserProfile;->access$900(Lorg/inaturalist/android/UserProfile;)V

    return-void

    .line 519
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_details_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 521
    iget-object p2, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p2, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    .line 522
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p1}, Lorg/inaturalist/android/UserProfile;->access$1000(Lorg/inaturalist/android/UserProfile;)V

    .line 524
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p2, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p2, p2, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "observations_count"

    invoke-virtual {p2, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lorg/inaturalist/android/UserProfile;->mTotalObservations:I

    return-void

    .line 526
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "species_count_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifications_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 527
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_observations_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v1

    const/4 v1, 0x0

    goto :goto_2

    .line 529
    :cond_6
    :goto_1
    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "total_results"

    .line 530
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "results"

    .line 531
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 534
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_7

    .line 537
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p1}, Lorg/inaturalist/android/UserProfile;->access$900(Lorg/inaturalist/android/UserProfile;)V

    return-void

    .line 541
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 543
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 544
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 546
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 550
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "user_observations_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 551
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iput-object v2, p1, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    goto :goto_5

    .line 552
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "species_count_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 553
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iput-object v2, p1, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    .line 554
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iput v1, p1, Lorg/inaturalist/android/UserProfile;->mTotalSpecies:I

    goto :goto_5

    .line 555
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "identifications_result"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 556
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iput-object v2, p1, Lorg/inaturalist/android/UserProfile;->mIdentifications:Ljava/util/ArrayList;

    .line 557
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    iput v1, p1, Lorg/inaturalist/android/UserProfile;->mTotalIdentifications:I

    .line 560
    :cond_b
    :goto_5
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {p1}, Lorg/inaturalist/android/UserProfile;->access$900(Lorg/inaturalist/android/UserProfile;)V

    return-void

    :cond_c
    :goto_6
    return-void
.end method
