.class public Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ObservationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObservationsPageAdapter"
.end annotation


# instance fields
.field final PAGE_COUNT:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Landroid/content/Context;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 p1, 0x3

    .line 968
    iput p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->PAGE_COUNT:I

    .line 972
    iput-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/view/ViewGroup;)V
    .locals 2

    .line 981
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 982
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 983
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x40200000    # 2.5f

    .line 984
    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setReleaseRatio(F)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1324
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 989
    iget-object v2, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d00ad

    .line 990
    invoke-virtual {v2, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v4, 0x7f0a01c3

    .line 992
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 994
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v5

    const-string v7, "got_it_all_caps"

    const-string v8, "got_it"

    const v9, 0x7f0a0280

    invoke-virtual {v5, v2, v9, v7, v8}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 997
    new-instance v5, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;

    invoke-direct {v5, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    const v7, 0x7f0a032e

    const v8, 0x7f0a0041

    const v10, 0x7f0a0370

    const v11, 0x7f0a014e

    const v12, 0x7f0a01b0

    const v13, 0x7f0a011c

    const v14, 0x7f0a011b

    const v15, 0x7f0a01b7

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 1025
    :pswitch_0
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2202(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1026
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2302(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1027
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f10026a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1028
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2402(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1029
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2400(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f080183

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2502(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 1031
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2500(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1032
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2602(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/PullToRefreshGridViewExtended;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    .line 1033
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2600(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1034
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2102(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1035
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2100(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f100318

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 1037
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2500(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/view/ViewGroup;)V

    .line 1041
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2600(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/view/ViewGroup;)V

    .line 1043
    new-instance v3, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$2;

    invoke-direct {v3, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$2;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    .line 1064
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2500(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1065
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2600(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1067
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2100(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1072
    :pswitch_1
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2702(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1073
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2802(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1074
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2800(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f10027c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1075
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2902(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1076
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$2900(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f080184

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1077
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3002(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 1078
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$3000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1079
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3102(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/PullToRefreshGridViewExtended;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    .line 1080
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$3100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1081
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$1302(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1082
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$1300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f10031a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 1084
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$3000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/view/ViewGroup;)V

    .line 1088
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$3100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/view/ViewGroup;)V

    .line 1090
    new-instance v3, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$3;

    invoke-direct {v3, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$3;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    .line 1103
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1104
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1106
    iget-object v3, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationListActivity;->access$1300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1111
    :pswitch_2
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$3202(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1112
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$602(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1113
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v7, 0x7f100272

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1114
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$3302(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1115
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$3300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v7, 0x7f080182

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1116
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$002(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 1117
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$102(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/PullToRefreshGridViewExtended;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    .line 1118
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3402(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1120
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const v5, 0x7f0a027f

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v4, v5}, Lorg/inaturalist/android/ObservationListActivity;->access$1202(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1121
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/inaturalist/android/ObservationListActivity;->access$3502(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/View;)Landroid/view/View;

    .line 1123
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3500(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$4;

    invoke-direct {v5, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$4;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/view/ViewGroup;)V

    .line 1133
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/view/ViewGroup;)V

    .line 1135
    new-instance v4, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;

    invoke-direct {v4, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$5;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    .line 1164
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1165
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1167
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v4, v5}, Lorg/inaturalist/android/ObservationListActivity;->access$2002(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1168
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$2000(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1169
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const v5, 0x7f0a036f

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lorg/inaturalist/android/ObservationListActivity;->access$1902(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1170
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const v5, 0x7f0a0093

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lorg/inaturalist/android/ObservationListActivity;->access$3602(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1172
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1174
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f100343

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1177
    :cond_0
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f100385

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1180
    :goto_0
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$6;

    invoke-direct {v5, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$6;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v4

    const-string v5, "(_synced_at IS NULL"

    if-eqz v4, :cond_1

    .line 1251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " OR user_login = \'"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1253
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") AND (is_deleted = 0 OR is_deleted is NULL) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND ((id >= "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "last_downloaded_id"

    invoke-interface {v4, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " OR (_synced_at IS NULL))"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1257
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v4}, Lorg/inaturalist/android/ObservationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v4}, Lorg/inaturalist/android/ObservationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1260
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    new-instance v7, Lorg/inaturalist/android/ObservationCursorAdapter;

    iget-object v9, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {v7, v9, v4}, Lorg/inaturalist/android/ObservationCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$202(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter;

    .line 1261
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    new-instance v7, Lorg/inaturalist/android/ObservationCursorAdapter;

    iget-object v9, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const/4 v10, 0x1

    iget-object v11, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v11}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v11

    invoke-direct {v7, v9, v4, v10, v11}, Lorg/inaturalist/android/ObservationCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZLorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$302(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter;

    .line 1262
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v4

    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1263
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v4

    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1265
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v4

    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/ObservationCursorAdapter;->setOnLoadingMoreResultsListener(Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;)V

    .line 1266
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v4

    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/ObservationCursorAdapter;->setOnLoadingMoreResultsListener(Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;)V

    .line 1268
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v4

    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1269
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v4

    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1272
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v4

    new-instance v5, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$7;

    invoke-direct {v5, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$7;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    invoke-virtual {v4, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 1278
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v4

    new-instance v5, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$8;

    invoke-direct {v5, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$8;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 1285
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$400(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 1287
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1288
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const v7, 0x7f0a0042

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lorg/inaturalist/android/ObservationListActivity;->access$4002(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1289
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    iget-object v5, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationListActivity;->access$4000(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v7}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    const/16 v7, 0x8

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    new-instance v5, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$9;

    invoke-direct {v5, v0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$9;-><init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V

    .line 1300
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$4000(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 1306
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f100143

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1307
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$3200(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1308
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$700(Lorg/inaturalist/android/ObservationListActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a00dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    iget-object v4, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationListActivity;->access$700(Lorg/inaturalist/android/ObservationListActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1315
    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1317
    iget-object v1, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationListActivity;->access$900(Lorg/inaturalist/android/ObservationListActivity;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
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
