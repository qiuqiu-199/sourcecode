.class Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;
.super Ljava/lang/Object;
.source "ProjectDetails.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

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

    .line 824
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails;->mObservations:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails;->mObservations:Ljava/util/ArrayList;

    .line 825
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 827
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$2200(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 829
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$2200(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/Button;

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
