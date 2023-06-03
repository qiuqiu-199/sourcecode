.class Lorg/lucasr/twowayview/TwoWayView$PositionScroller;
.super Ljava/lang/Object;
.source "TwoWayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_AFTER_BOUND:I = 0x3

.field private static final MOVE_AFTER_POS:I = 0x1

.field private static final MOVE_BEFORE_BOUND:I = 0x4

.field private static final MOVE_BEFORE_POS:I = 0x2

.field private static final MOVE_OFFSET:I = 0x5

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPosition:I

.field private final mExtraScroll:I

.field private mLastSeenPosition:I

.field private mMode:I

.field private mOffsetFromStart:I

.field private mScrollDuration:I

.field private mTargetPosition:I

.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 6747
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6748
    invoke-static {p1}, Lorg/lucasr/twowayview/TwoWayView;->access$4100(Lorg/lucasr/twowayview/TwoWayView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result p1

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 7002
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4700(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    .line 7003
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    .line 7005
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$4800(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v2

    .line 7006
    :goto_0
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4800(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v3

    .line 7008
    :goto_1
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    .line 7138
    :pswitch_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v0, v1, :cond_2

    .line 7140
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 7144
    :cond_2
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7146
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 7147
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    add-int v3, v1, v0

    sub-int/2addr v3, v6

    if-ge v2, v1, :cond_3

    sub-int v4, v1, v2

    add-int/lit8 v5, v4, 0x1

    goto :goto_2

    :cond_3
    if-le v2, v3, :cond_4

    sub-int v5, v2, v3

    :cond_4
    :goto_2
    int-to-float v4, v5

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 7160
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-ge v2, v1, :cond_5

    .line 7162
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$5000(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 7163
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 7164
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7165
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_5
    if-le v2, v3, :cond_6

    .line 7167
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$5000(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 7168
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 7169
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7170
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 7173
    :cond_6
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7174
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    .line 7175
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mOffsetFromStart:I

    sub-int/2addr v0, v1

    .line 7176
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$5000(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 7178
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto/16 :goto_4

    .line 7102
    :pswitch_1
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-gez v3, :cond_7

    return-void

    :cond_7
    add-int/2addr v1, v3

    .line 7109
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v1, v4, :cond_8

    .line 7111
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 7115
    :cond_8
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v4, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7116
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v4, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v4

    .line 7117
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v5, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v3

    sub-int v5, v0, v3

    .line 7119
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7121
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7123
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    if-le v1, v6, :cond_9

    .line 7124
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr v5, v2

    neg-int v1, v5

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7125
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_9
    sub-int/2addr v0, v2

    add-int/2addr v3, v4

    if-le v0, v3, :cond_14

    .line 7130
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr v0, v3

    neg-int v0, v0

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto/16 :goto_4

    .line 7042
    :pswitch_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 7043
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    if-eq v1, v2, :cond_d

    if-le v0, v6, :cond_d

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    if-lt v0, v2, :cond_a

    goto :goto_3

    :cond_a
    add-int/2addr v1, v6

    .line 7051
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v1, v0, :cond_b

    .line 7053
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 7057
    :cond_b
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v6}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7058
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v2

    .line 7059
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v4, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    .line 7060
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7061
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    if-ge v1, v4, :cond_c

    .line 7062
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v4, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7064
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7065
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_c
    if-le v2, v3, :cond_14

    .line 7068
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr v2, v3

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto/16 :goto_4

    :cond_d
    :goto_3
    return-void

    .line 7076
    :pswitch_3
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v1, v0, :cond_e

    .line 7078
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 7082
    :cond_e
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 7087
    :cond_f
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v3, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    if-lez v1, :cond_10

    .line 7088
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7091
    :cond_10
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v3, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7092
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7094
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-le v1, v0, :cond_14

    .line 7095
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 7010
    :pswitch_4
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v6

    if-gez v2, :cond_11

    return-void

    :cond_11
    add-int/2addr v1, v2

    .line 7016
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v1, v4, :cond_12

    .line 7018
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 7022
    :cond_12
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v4, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7023
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v4, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v4

    .line 7024
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v5, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 7026
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_13

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_13
    sub-int/2addr v4, v0

    add-int/2addr v4, v3

    .line 7030
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v4, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7032
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7033
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-ge v1, v0, :cond_14

    .line 7034
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_14
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 7

    .line 6945
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 6946
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 6949
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$4300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    .line 6950
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4500(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const-string v4, "TwoWayView"

    .line 6953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollToVisible called with targetPosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not visible ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lt p2, v1, :cond_2

    if-le p2, v0, :cond_3

    :cond_2
    const/4 p2, -0x1

    .line 6962
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 6963
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    .line 6964
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v4, p1}, Lorg/lucasr/twowayview/TwoWayView;->access$4600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result p1

    const/4 v4, 0x0

    if-le p1, v3, :cond_4

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-ge v0, v2, :cond_5

    sub-int p1, v0, v2

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    if-ltz p2, :cond_8

    .line 6979
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 6980
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p2}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    .line 6981
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1, p2}, Lorg/lucasr/twowayview/TwoWayView;->access$4600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result p2

    .line 6982
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_7

    add-int v5, p2, v1

    if-le v5, v3, :cond_7

    sub-int/2addr p2, v3

    .line 6986
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_7
    if-lez p1, :cond_8

    sub-int p2, v0, v1

    if-ge p2, v2, :cond_8

    sub-int/2addr v0, v2

    .line 6989
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6993
    :cond_8
    :goto_1
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p2, p1, p3}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    return-void
.end method

.method start(I)V
    .locals 5

    .line 6752
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 6754
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6756
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;-><init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;I)V

    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    .line 6765
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6771
    :cond_1
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    .line 6774
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v4}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v3, 0xc8

    const/4 v4, -0x1

    if-ge p1, v1, :cond_2

    sub-int/2addr v1, p1

    add-int/2addr v1, v2

    const/4 v0, 0x2

    .line 6779
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_4

    sub-int v0, p1, v0

    add-int/lit8 v1, v0, 0x1

    .line 6782
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    :goto_0
    if-lez v1, :cond_3

    .line 6789
    div-int/2addr v3, v1

    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    .line 6791
    :cond_3
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    .line 6794
    :goto_1
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    .line 6795
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    .line 6796
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 6798
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 6784
    :cond_4
    invoke-virtual {p0, p1, v4, v3}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method start(II)V
    .locals 6

    .line 6802
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 6805
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(I)V

    return-void

    .line 6809
    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6811
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;-><init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;II)V

    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    .line 6820
    :cond_1
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 6826
    :cond_2
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    .line 6829
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v5}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v4, 0xc8

    if-ge p1, v2, :cond_5

    sub-int/2addr v1, p2

    if-ge v1, v3, :cond_3

    return-void

    :cond_3
    sub-int/2addr v2, p1

    add-int/2addr v2, v3

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 6843
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    .line 6846
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-le p1, v1, :cond_9

    sub-int v2, p2, v2

    if-ge v2, v3, :cond_6

    return-void

    :cond_6
    sub-int v1, p1, v1

    add-int/2addr v1, v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_7

    const/4 v1, 0x3

    .line 6859
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    goto :goto_0

    .line 6862
    :cond_7
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    :goto_1
    if-lez v1, :cond_8

    .line 6870
    div-int/2addr v4, v1

    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 6872
    :cond_8
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    .line 6875
    :goto_2
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    .line 6876
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    .line 6877
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 6879
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 6865
    :cond_9
    invoke-virtual {p0, p1, p2, v4}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    .line 6883
    invoke-virtual {p0, p1, p2, v0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method startWithOffset(III)V
    .locals 4

    .line 6887
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 6889
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6892
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$3;-><init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;III)V

    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    .line 6901
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6907
    :cond_1
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    add-int/2addr p2, v1

    const/4 v1, 0x0

    .line 6909
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    .line 6910
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mOffsetFromStart:I

    const/4 p1, -0x1

    .line 6911
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    .line 6912
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    const/4 v1, 0x5

    .line 6913
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    .line 6915
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    add-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    .line 6919
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-ge v3, v1, :cond_2

    .line 6920
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    sub-int/2addr v1, p2

    goto :goto_0

    .line 6921
    :cond_2
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-le v3, v2, :cond_4

    .line 6922
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    sub-int v1, p2, v2

    :goto_0
    int-to-float p2, v1

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    .line 6933
    :goto_1
    iput p3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    .line 6935
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 6937
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 6925
    :cond_4
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 6926
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result p1

    .line 6927
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1, p3}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    return-void
.end method

.method stop()V
    .locals 1

    .line 6997
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, p0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
