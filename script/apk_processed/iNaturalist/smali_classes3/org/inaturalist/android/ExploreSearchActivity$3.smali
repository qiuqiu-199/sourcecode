.class Lorg/inaturalist/android/ExploreSearchActivity$3;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreSearchActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreSearchActivity;->access$500(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 213
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object v3, p1, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    .line 214
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$100(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/EditText;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iput v2, v0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object v3, p1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 218
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object v3, p1, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 219
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-boolean v2, p1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    .line 220
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$300(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/EditText;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iput v1, v0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    :goto_0
    const-string v0, ""

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v0, Lorg/inaturalist/android/ExploreSearchActivity$3$1;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity$3$1;-><init>(Lorg/inaturalist/android/ExploreSearchActivity$3;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1000(Lorg/inaturalist/android/ExploreSearchActivity;Z)V

    return-void
.end method
