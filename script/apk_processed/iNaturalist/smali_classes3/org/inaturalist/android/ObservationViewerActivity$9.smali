.class Lorg/inaturalist/android/ObservationViewerActivity$9;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->refreshActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommentRemoved(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 5

    .line 1003
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1, v0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 1006
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_COMMENT:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "comment_id"

    const-string v2, "id"

    .line 1007
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "observation_id"

    .line 1008
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1009
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onCommentUpdated(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 5

    .line 1015
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v1, 0x24001

    .line 1017
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1018
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "body"

    .line 1019
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1022
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$9$4;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity$9$4;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$9;Landroid/widget/EditText;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1032
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$600(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$9$5;

    invoke-direct {v2, p0, v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity$9$5;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$9;Landroid/widget/EditText;Lorg/inaturalist/android/BetterJSONObject;)V

    new-instance p1, Lorg/inaturalist/android/ObservationViewerActivity$9$6;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$9$6;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$9;)V

    const v3, 0x7f10037c

    invoke-virtual {v1, v3, v0, v2, p1}, Lorg/inaturalist/android/ActivityHelper;->confirm(ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onIdentificationAdded(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 5

    .line 903
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1, v0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 906
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_ID:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 907
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadTaxon:Z

    const-string v1, "observation_id"

    .line 908
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "taxon_id"

    const-string v2, "taxon"

    .line 909
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "from_vision"

    const/4 v1, 0x0

    .line 910
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 911
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 914
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "Via"

    const-string v2, "View Obs Agree"

    .line 915
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "owners_identification_from_vision"

    .line 916
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 918
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Obs - Add Identification"

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 920
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 924
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onIdentificationRemoved(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 5

    .line 931
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 932
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1, v0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 934
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_ID:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 935
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadTaxon:Z

    const-string v1, "identification_id"

    const-string v2, "id"

    .line 936
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "observation_id"

    .line 937
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 938
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onIdentificationRestored(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 5

    .line 990
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1, v0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 993
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_RESTORE_ID:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "identification_id"

    const-string v2, "id"

    .line 994
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "observation_id"

    .line 995
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 996
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onIdentificationUpdated(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 5

    .line 944
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v1, 0x24001

    .line 946
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 947
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "body"

    .line 948
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 949
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 951
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$9$1;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity$9$1;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$9;Landroid/widget/EditText;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 961
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$600(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$9$2;

    invoke-direct {v2, p0, v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity$9$2;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$9;Landroid/widget/EditText;Lorg/inaturalist/android/BetterJSONObject;)V

    new-instance p1, Lorg/inaturalist/android/ObservationViewerActivity$9$3;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$9$3;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$9;)V

    const v3, 0x7f10037d

    invoke-virtual {v1, v3, v0, v2, p1}, Lorg/inaturalist/android/ActivityHelper;->confirm(ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
