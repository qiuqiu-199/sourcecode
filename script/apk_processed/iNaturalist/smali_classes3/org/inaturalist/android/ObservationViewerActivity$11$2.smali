.class Lorg/inaturalist/android/ObservationViewerActivity$11$2;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$11;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1116
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1119
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_COMMENT:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation_id"

    .line 1120
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "comment_body"

    .line 1121
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1124
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v4, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    .line 1125
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2000(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 1128
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0, p1, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 1131
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1700(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1132
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1600(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1136
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 1137
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
