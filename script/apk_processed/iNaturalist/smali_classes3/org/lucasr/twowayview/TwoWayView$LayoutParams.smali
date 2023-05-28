.class public Lorg/lucasr/twowayview/TwoWayView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "TwoWayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z

.field id:J

.field scrappedFromPosition:I

.field viewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 5893
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const-wide/16 p1, -0x1

    .line 5873
    iput-wide p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5895
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    const/4 p2, -0x2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "TwoWayView"

    const-string v1, "Constructing LayoutParams with width FILL_PARENT does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    .line 5896
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5899
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    .line 5902
    :cond_0
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    if-ne p1, v0, :cond_1

    const-string p1, "TwoWayView"

    const-string v0, "Constructing LayoutParams with height FILL_PARENT does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    .line 5903
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5911
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    .line 5873
    iput-wide p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5913
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const-string p1, "TwoWayView"

    const-string v0, "Inflation setting LayoutParams width to MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    .line 5914
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5917
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    .line 5920
    :cond_0
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    if-ne p1, p2, :cond_1

    const-string p1, "TwoWayView"

    const-string p2, "Inflation setting LayoutParams height to MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    .line 5921
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    .line 5924
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 5929
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v0, -0x1

    .line 5873
    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5931
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p1, "TwoWayView"

    const-string v2, "Constructing LayoutParams with width MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    .line 5932
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5935
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    .line 5938
    :cond_0
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    if-ne p1, v1, :cond_1

    const-string p1, "TwoWayView"

    const-string v1, "Constructing LayoutParams with height MATCH_PARENT - does not make much sense as the view might change orientation. Falling back to WRAP_CONTENT"

    .line 5939
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5942
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    :cond_1
    return-void
.end method
