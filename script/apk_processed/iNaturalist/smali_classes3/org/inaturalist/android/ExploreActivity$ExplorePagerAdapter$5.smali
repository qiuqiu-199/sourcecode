.class Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$5;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$5;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1493
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 1494
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$5;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p3, p3, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const-class p4, Lorg/inaturalist/android/UserProfile;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "user"

    .line 1495
    new-instance p4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p4, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1496
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$5;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ExploreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
