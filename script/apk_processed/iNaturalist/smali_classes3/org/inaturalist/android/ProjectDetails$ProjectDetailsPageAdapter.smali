.class public Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProjectDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProjectDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectDetailsPageAdapter"
.end annotation


# instance fields
.field final PAGE_COUNT:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/inaturalist/android/ProjectDetails;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ProjectDetails;Landroid/content/Context;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 p1, 0x4

    .line 720
    iput p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->PAGE_COUNT:I

    .line 724
    iput-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 871
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    packed-switch p2, :pswitch_data_0

    const v0, 0x7f0d00cc

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0d00c7

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0d00cd

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0d00d2

    .line 752
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 753
    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 756
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectDetails;->access$500(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    const v2, 0x7f0a0273

    const-string v3, "observations_regular"

    const-string v4, "project_observations"

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_1

    .line 794
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a01c6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$2002(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 795
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a026c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$2102(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 796
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a0330

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$2202(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/Button;)Landroid/widget/Button;

    .line 797
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a026b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/GridViewExtended;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$702(Lorg/inaturalist/android/ProjectDetails;Lorg/inaturalist/android/GridViewExtended;)Lorg/inaturalist/android/GridViewExtended;

    .line 798
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$700(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object p2

    new-instance v2, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$2;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$2;-><init>(Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;)V

    invoke-virtual {p2, v2}, Lorg/inaturalist/android/GridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 820
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$2200(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/Button;

    move-result-object p2

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 821
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$700(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object p2

    new-instance v2, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$3;-><init>(Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;)V

    invoke-virtual {p2, v2}, Lorg/inaturalist/android/GridViewExtended;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 838
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$2200(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/Button;

    move-result-object p2

    new-instance v2, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$4;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$4;-><init>(Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$700(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 762
    :pswitch_3
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a01bf

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$902(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 763
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a0184

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1002(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 764
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a0183

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1102(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 765
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a0185

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1202(Lorg/inaturalist/android/ProjectDetails;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 766
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$1100(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/ListView;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 769
    :pswitch_4
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a01c9

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1302(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 770
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a0293

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1402(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 771
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a0292

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1502(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 772
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a0294

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1602(Lorg/inaturalist/android/ProjectDetails;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 773
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$1500(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/ListView;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    goto :goto_1

    .line 776
    :pswitch_5
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a01ce

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1702(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 777
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a034e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1802(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 778
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f0a034d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-static {p2, v2}, Lorg/inaturalist/android/ProjectDetails;->access$1902(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 779
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$1900(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/ListView;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 780
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$1900(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/ListView;

    move-result-object p2

    new-instance v1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$1;-><init>(Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 862
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 864
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$600(Lorg/inaturalist/android/ProjectDetails;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
