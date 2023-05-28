.class Lorg/inaturalist/android/ObservationViewerActivity$7;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->refreshFavorites()V
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

    .line 794
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 797
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Obs - Fave"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 799
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_FAVORITE:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation_id"

    .line 800
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 801
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 803
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "username"

    .line 804
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_icon_url"

    .line 805
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 807
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 808
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 810
    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "{ \"user\": { \"login\": \"%s\", \"user_icon_url\": \"%s\" }, \"created_at\": \"%s\" }"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    const/4 p1, 0x2

    aput-object v2, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1000(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/FavoritesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/FavoritesAdapter;->notifyDataSetChanged()V

    .line 816
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1200(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 817
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 819
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 820
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1300(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 822
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$7;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1300(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
