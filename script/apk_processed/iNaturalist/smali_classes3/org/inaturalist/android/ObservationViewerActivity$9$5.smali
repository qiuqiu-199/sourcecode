.class Lorg/inaturalist/android/ObservationViewerActivity$9$5;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$9;->onCommentUpdated(Lorg/inaturalist/android/BetterJSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

.field final synthetic val$comment:Lorg/inaturalist/android/BetterJSONObject;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$9;Landroid/widget/EditText;Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->val$comment:Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1036
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1039
    new-instance p2, Landroid/content/IntentFilter;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0, p2, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 1042
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_COMMENT:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {p2, v0, v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "comment_id"

    .line 1043
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->val$comment:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_id"

    .line 1044
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "comment_body"

    .line 1045
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$5;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
