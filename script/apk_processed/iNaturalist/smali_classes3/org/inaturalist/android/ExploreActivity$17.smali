.class Lorg/inaturalist/android/ExploreActivity$17;
.super Lcom/google/android/gms/maps/model/UrlTileProvider;
.source "ExploreActivity.java"


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
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;II)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$17;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getTileUrl(III)Ljava/net/URL;
    .locals 4

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/%s/%d/%d/%d.png?%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x9

    if-gt p3, v2, :cond_0

    const-string v2, "colored_heatmap"

    goto :goto_0

    :cond_0
    const-string v2, "points"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 1189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v2

    const/4 p3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$17;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {p2}, Lorg/inaturalist/android/ExploreSearchFilters;->toUrlQueryString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    .line 1188
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1192
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 1194
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
