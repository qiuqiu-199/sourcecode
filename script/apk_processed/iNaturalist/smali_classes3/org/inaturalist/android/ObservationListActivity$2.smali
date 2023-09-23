.class Lorg/inaturalist/android/ObservationListActivity$2;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity;->refreshViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$2;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p1, p4, -0x3

    if-lt p2, p1, :cond_0

    if-lez p4, :cond_0

    .line 521
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$2;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$2;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 524
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$2;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$1300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$2;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$1300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
