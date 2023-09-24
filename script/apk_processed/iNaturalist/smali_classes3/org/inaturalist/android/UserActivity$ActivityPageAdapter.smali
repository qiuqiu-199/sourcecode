.class public Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityPageAdapter"
.end annotation


# instance fields
.field final PAGE_COUNT:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/inaturalist/android/UserActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/UserActivity;Landroid/content/Context;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 p1, 0x3

    .line 163
    iput p1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->PAGE_COUNT:I

    .line 167
    iput-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 258
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
    .locals 6

    .line 177
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008e

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f100281

    const v2, 0x7f0a01b0

    const v3, 0x7f0a011d

    const v4, 0x7f0a011b

    const v5, 0x7f0a01b7

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 183
    :pswitch_0
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-static {p2, v1}, Lorg/inaturalist/android/UserActivity;->access$002(Lorg/inaturalist/android/UserActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 184
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lorg/inaturalist/android/UserActivity;->access$102(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 185
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p2}, Lorg/inaturalist/android/UserActivity;->access$100(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;

    move-result-object p2

    const v1, 0x7f100270

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {p2, v1}, Lorg/inaturalist/android/UserActivity;->access$202(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 189
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    iget-object v1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {v1}, Lorg/inaturalist/android/UserActivity;->access$200(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lorg/inaturalist/android/UserActivity;->access$300(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/view/ViewGroup;)V

    .line 191
    new-instance p2, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter$1;-><init>(Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;)V

    .line 218
    iget-object v1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {v1}, Lorg/inaturalist/android/UserActivity;->access$200(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 224
    :pswitch_1
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-static {p2, v5}, Lorg/inaturalist/android/UserActivity;->access$402(Lorg/inaturalist/android/UserActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 225
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lorg/inaturalist/android/UserActivity;->access$502(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 226
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p2}, Lorg/inaturalist/android/UserActivity;->access$500(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lorg/inaturalist/android/UserActivity;->access$602(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 228
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p2}, Lorg/inaturalist/android/UserActivity;->access$600(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;

    move-result-object p2

    const v1, 0x7f1003b5

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {p2, v1}, Lorg/inaturalist/android/UserActivity;->access$702(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 231
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    iget-object v1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {v1}, Lorg/inaturalist/android/UserActivity;->access$700(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lorg/inaturalist/android/UserActivity;->access$300(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-static {p2, v5}, Lorg/inaturalist/android/UserActivity;->access$802(Lorg/inaturalist/android/UserActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 238
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lorg/inaturalist/android/UserActivity;->access$902(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 239
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p2}, Lorg/inaturalist/android/UserActivity;->access$900(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lorg/inaturalist/android/UserActivity;->access$1002(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 241
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p2}, Lorg/inaturalist/android/UserActivity;->access$1000(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;

    move-result-object p2

    const v1, 0x7f1003b4

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {p2, v1}, Lorg/inaturalist/android/UserActivity;->access$1102(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 244
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    iget-object v1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {v1}, Lorg/inaturalist/android/UserActivity;->access$1100(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lorg/inaturalist/android/UserActivity;->access$300(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/view/ViewGroup;)V

    .line 249
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$1200(Lorg/inaturalist/android/UserActivity;)V

    return-object v0

    nop

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
