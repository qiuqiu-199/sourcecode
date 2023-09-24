.class Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;->this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 2

    .line 1344
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;->this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ExploreActivity;->access$3202(Lorg/inaturalist/android/ExploreActivity;Z)Z

    .line 1346
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;->this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$3300(Lorg/inaturalist/android/ExploreActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;->this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/inaturalist/android/ExploreActivity;->access$3302(Lorg/inaturalist/android/ExploreActivity;Z)Z

    .line 1348
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;->this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$3400(Lorg/inaturalist/android/ExploreActivity;)V

    :cond_0
    return-void
.end method
