.class Lorg/inaturalist/android/GuideDetails$9;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 816
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$1800(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideTaxonFilter;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v1}, Lorg/inaturalist/android/GuideDetails;->access$1900(Lorg/inaturalist/android/GuideDetails;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/GuideXML;->getRecommendedPredicate(Lorg/inaturalist/android/GuideTaxonFilter;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 817
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    iput-object p1, v0, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    .line 819
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 824
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$2000(Lorg/inaturalist/android/GuideDetails;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;

    .line 825
    instance-of v4, v2, Lorg/inaturalist/android/GuideDetails$GuideMenuSection;

    if-eqz v4, :cond_0

    .line 826
    invoke-interface {v2}, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v4, v4, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    if-le v1, v3, :cond_3

    .line 837
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v1}, Lorg/inaturalist/android/GuideDetails;->access$2100(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/GuideDetails$9$1;

    invoke-direct {v2, p0, p1}, Lorg/inaturalist/android/GuideDetails$9$1;-><init>(Lorg/inaturalist/android/GuideDetails$9;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 878
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 879
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v1}, Lorg/inaturalist/android/GuideDetails;->access$2100(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v1, p1, v0, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_2

    .line 881
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v1}, Lorg/inaturalist/android/GuideDetails;->access$2100(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 888
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1700(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->notifyDataSetChanged()V

    return-void
.end method
