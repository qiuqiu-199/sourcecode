.class Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAdditionalObsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;Lorg/inaturalist/android/ObservationCursorAdapter$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "success"

    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "observation_count"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 125
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor()V

    .line 126
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshPhotoInfo()V

    .line 128
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$102(Lorg/inaturalist/android/ObservationCursorAdapter;Z)Z

    .line 129
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$200(Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 131
    iget-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$200(Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    move-result-object p2

    invoke-interface {p2}, Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;->onLoadingMoreResultsFinish()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$200(Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    move-result-object p2

    invoke-interface {p2}, Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;->onLoadingMoreResultsFailed()V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 139
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$302(Lorg/inaturalist/android/ObservationCursorAdapter;Z)Z

    :cond_2
    return-void
.end method
