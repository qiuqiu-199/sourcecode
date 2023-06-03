.class Lorg/inaturalist/android/ExploreActivity$16;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->refreshObservations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1156
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object p1

    .line 1157
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->farLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object p1, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1158
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1159
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 1162
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$600(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$900(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$600(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ExploreActivity;->access$900(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_0

    .line 1163
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-boolean v1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    goto :goto_0

    .line 1165
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-boolean v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    .line 1168
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1, v1}, Lorg/inaturalist/android/ExploreActivity;->access$2400(Lorg/inaturalist/android/ExploreActivity;Z)V

    .line 1169
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$2500(Lorg/inaturalist/android/ExploreActivity;)V

    .line 1171
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$2600(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1172
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$2700(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1173
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$16;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$2800(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#8A000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
