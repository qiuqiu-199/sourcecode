.class Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserActivitiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/UserActivitiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObservationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserActivitiesAdapter;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/UserActivitiesAdapter;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/UserActivitiesAdapter;Lorg/inaturalist/android/UserActivitiesAdapter$1;)V
    .locals 0

    .line 455
    invoke-direct {p0, p1}, Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 458
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$200(Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_AND_SAVE_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/Observation;

    goto :goto_0

    :cond_0
    const-string p1, "observation_result"

    .line 464
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/Observation;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "UserActivitiesAdapter"

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Download complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object p2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$500(Lorg/inaturalist/android/UserActivitiesAdapter;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    return-void

    .line 477
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 478
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 479
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 481
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "resource_id"

    .line 482
    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 483
    iget-object v4, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "UserActivitiesAdapter"

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": Updating view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v3, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    iget-object v4, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v1, v2, v0}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$600(Lorg/inaturalist/android/UserActivitiesAdapter;ILandroid/view/View;Lorg/inaturalist/android/BetterJSONObject;I)V

    goto :goto_1

    :cond_5
    return-void
.end method
