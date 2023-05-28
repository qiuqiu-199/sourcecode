.class Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 211
    sget-object p1, Lorg/inaturalist/android/ObservationListActivity;->TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_SYNC_COMPLETE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 215
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 216
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->refreshDrawableState()V

    .line 217
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->onRefreshComplete()V

    .line 218
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->refreshDrawableState()V

    .line 220
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor()V

    .line 221
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor()V

    .line 222
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$400(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 224
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 226
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f100272

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :cond_0
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "#,###,###"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationListActivity;->access$700(Lorg/inaturalist/android/ObservationListActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a00dd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "observation_count"

    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1, v2}, Lorg/inaturalist/android/ObservationListActivity;->access$802(Lorg/inaturalist/android/ObservationListActivity;Z)Z

    .line 235
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_1

    const-string p1, "sync_canceled"

    .line 236
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 238
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput-boolean v2, p1, Lorg/inaturalist/android/ObservationListActivity;->mUserCanceledSync:Z

    .line 239
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$400(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 240
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$900(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 243
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_SPECIFIC_USER_DETAILS:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationListActivity;->access$1000(Lorg/inaturalist/android/ObservationListActivity;Ljava/lang/String;)V

    .line 246
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "Via"

    const-string v1, "Upload Complete"

    .line 247
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Sync Stopped"

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 255
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$1100(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 259
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-string v0, "iNaturalistPreferences"

    invoke-virtual {p1, v0, v2}, Lorg/inaturalist/android/ObservationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "onboarded_syncing"

    .line 260
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "first_sync"

    .line 261
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 262
    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationListActivity;->access$1200(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/ViewGroup;

    move-result-object p2

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/16 v2, 0x8

    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void
.end method
