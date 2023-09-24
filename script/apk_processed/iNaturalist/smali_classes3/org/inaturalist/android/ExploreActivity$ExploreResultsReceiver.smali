.class Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExploreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreResultsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ExploreActivity$1;)V
    .locals 0

    .line 667
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 671
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 674
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "explore_get_observations_result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "explore_get_species_result"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 678
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "explore_get_identifiers_result"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 680
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "explore_get_observers_result"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 684
    :goto_0
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v5, v5, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    aput-boolean v4, v5, v0

    .line 685
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ExploreActivity;->access$1200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;

    move-result-object v5

    aget-object v5, v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v0, :cond_4

    .line 687
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iput-boolean v4, v5, Lorg/inaturalist/android/ExploreActivity;->mMapMoved:Z

    :cond_4
    const-string v5, "error"

    .line 689
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 691
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1300(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v1, 0x7f10010a

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ExploreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "is_shared_on_app"

    .line 695
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 700
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_1

    :cond_6
    const-string p1, "results"

    .line 702
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_1
    const/4 p2, 0x0

    if-eqz p1, :cond_7

    const-string v5, "results"

    .line 709
    invoke-virtual {p1, v5}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v5

    const-string v6, "total_results"

    .line 710
    invoke-virtual {p1, v6}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 711
    iget-object v7, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v7, v7, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    const-string v8, "page"

    invoke-virtual {p1, v8}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v7, v0

    if-eqz v6, :cond_7

    .line 713
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 714
    invoke-virtual {v5}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p2

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    if-nez p2, :cond_8

    .line 719
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1400(Lorg/inaturalist/android/ExploreActivity;)V

    return-void

    .line 723
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 725
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 727
    :try_start_0
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 728
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    .line 730
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 734
    :cond_9
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    aget p2, p2, v0

    if-le p2, v3, :cond_b

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;

    move-result-object p2

    aget-object p2, p2, v0

    if-nez p2, :cond_a

    goto :goto_5

    .line 746
    :cond_a
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aput p1, p2, v0

    .line 749
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "mList0"

    invoke-static {p1, p2, v0, v4}, Lorg/inaturalist/android/ExploreActivity;->access$1700(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;

    move-result-object p2

    aget-object p2, p2, v3

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "mList1"

    invoke-static {p1, p2, v0, v3}, Lorg/inaturalist/android/ExploreActivity;->access$1700(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 751
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;

    move-result-object p2

    aget-object p2, p2, v1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mList2"

    invoke-static {p1, p2, v0, v1}, Lorg/inaturalist/android/ExploreActivity;->access$1700(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;

    move-result-object p2

    aget-object p2, p2, v2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mList3"

    invoke-static {p1, p2, v0, v1}, Lorg/inaturalist/android/ExploreActivity;->access$1700(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_6

    .line 736
    :cond_b
    :goto_5
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;

    move-result-object p2

    aput-object v5, p2, v0

    .line 737
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aput p1, p2, v0

    if-nez v0, :cond_c

    .line 739
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_c

    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 741
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 755
    :cond_c
    :goto_6
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1400(Lorg/inaturalist/android/ExploreActivity;)V

    return-void
.end method
