.class Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1138
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 1140
    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p2}, Lorg/inaturalist/android/ObservationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.intent.action.PICK"

    .line 1141
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->isLocked(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->isLocked(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1148
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    iget-object p5, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p5, p5, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-class v0, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p3, p4, p1, p5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p1, 0x1001

    invoke-virtual {p2, p3, p1}, Lorg/inaturalist/android/ObservationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1151
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "Via"

    const-string p3, "Me Tab"

    .line 1152
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1154
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p2

    const-string p3, "Navigate - Observations - Details"

    invoke-virtual {p2, p3, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1156
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1144
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const/4 p3, -0x1

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/inaturalist/android/ObservationListActivity;->setResult(ILandroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method
