.class Lorg/inaturalist/android/ExploreActivity$12;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    .line 1081
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$12;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p1, p4, -0x9

    if-lt p2, p1, :cond_0

    if-lez p4, :cond_0

    .line 1084
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$12;->this$0:Lorg/inaturalist/android/ExploreActivity;

    .line 1085
    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$12;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p3, p0, Lorg/inaturalist/android/ExploreActivity$12;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p3}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object p3

    invoke-virtual {p3}, Lorg/inaturalist/android/GridViewExtended;->getLastVisiblePosition()I

    move-result p3

    if-le p1, p3, :cond_0

    .line 1087
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$12;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1, p2, p2}, Lorg/inaturalist/android/ExploreActivity;->access$2000(Lorg/inaturalist/android/ExploreActivity;IZ)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
