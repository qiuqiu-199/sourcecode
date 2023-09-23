.class Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$9;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1292
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$9;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1295
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "New Obs - Start"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 1296
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$9;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationListActivity;->showNewObsMenu()V

    return-void
.end method
