.class Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObservationSyncProgressReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 1434
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V
    .locals 0

    .line 1434
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1437
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "observation_id"

    .line 1439
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "progress"

    .line 1440
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1442
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1446
    :cond_0
    sget-object v0, Lorg/inaturalist/android/ObservationListActivity;->TAG:Ljava/lang/String;

    const-string v1, "Updating progress for %d: %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/ObservationCursorAdapter;->updateProgress(IF)V

    .line 1449
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->notifyDataSetChanged()V

    .line 1450
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p2, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->updateProgress(IF)V

    .line 1451
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
