.class Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$1;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


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

    .line 1334
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$1;->this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 1337
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$1;->this$2:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/ExploreActivity;->access$3100(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
