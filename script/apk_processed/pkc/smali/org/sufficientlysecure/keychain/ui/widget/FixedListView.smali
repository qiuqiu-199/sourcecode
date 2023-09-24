.class public Lorg/sufficientlysecure/keychain/ui/widget/FixedListView;
.super Landroid/widget/ListView;
.source "FixedListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 33
    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FixedListView;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 41
    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/FixedListView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 37
    invoke-direct {v0, v1, v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/FixedListView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    const v3, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 49
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 50
    invoke-super {v1, v2, v3}, Landroid/widget/ListView;->onMeasure(II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/FixedListView;--->onMeasure(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
