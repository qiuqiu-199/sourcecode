.class final Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;
.super Landroid/webkit/WebView;
.source "PullToRefreshWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalWebViewSDK9"
.end annotation


# static fields
.field static final OVERSCROLL_FUZZY_THRESHOLD:I = 0x2

.field static final OVERSCROLL_SCALE_FACTOR:F = 1.5f


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    .line 143
    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getScrollRange()I
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    iget-object v0, v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    iget-object v1, v1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    .line 162
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 161
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11

    .line 150
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    move-object v1, p0

    .line 154
    iget-object v2, v1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    .line 155
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;->getScrollRange()I

    move-result v7

    const/4 v8, 0x2

    const/high16 v9, 0x3fc00000    # 1.5f

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    move/from16 v10, p9

    .line 154
    invoke-static/range {v2 .. v10}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V

    return v0
.end method