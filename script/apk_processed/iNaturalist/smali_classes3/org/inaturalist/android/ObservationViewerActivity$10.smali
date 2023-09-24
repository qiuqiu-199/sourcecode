.class Lorg/inaturalist/android/ObservationViewerActivity$10;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1059
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1062
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/IdentificationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "suggest_id"

    const/4 v1, 0x1

    .line 1063
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "observation_id"

    .line 1064
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 1065
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observed_on"

    .line 1066
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "longitude"

    .line 1067
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "latitude"

    .line 1068
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1069
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1071
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1073
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 1074
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "obs_photo_filename"

    const-string v3, "photo_filename"

    .line 1076
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1075
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "obs_photo_url"

    const-string v3, "photo_url"

    .line 1078
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "obs_photo_filename"

    .line 1083
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "obs_photo_url"

    .line 1084
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string v0, "observation"

    .line 1087
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$10;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
