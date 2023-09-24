.class public Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;
.super Ljava/lang/Object;
.source "ContentDescriptionHint.java"


# static fields
.field private static final ESTIMATED_TOAST_HEIGHT_DIPS:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->showLongClickText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static remove(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;--->remove(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setup(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    .line 30
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$1;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;--->setup(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setup(Landroid/view/View;I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 39
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$2;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$2;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;--->setup(Landroid/view/View;I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setup(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 48
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$3;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$3;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;--->setup(Landroid/view/View;Ljava/lang/CharSequence;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static showLongClickText(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 61
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 65
    new-array v2, v0, [I

    .line 66
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 67
    invoke-virtual {v9, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 68
    invoke-virtual {v9, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 71
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 72
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 73
    aget v6, v2, v1

    div-int/2addr v5, v0

    add-int/2addr v6, v5

    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v7, 0x42400000    # 48.0f

    .line 76
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v7

    float-to-int v7, v8

    .line 78
    invoke-static {v4, v10, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    const/4 v4, 0x1

    .line 79
    aget v8, v2, v4

    if-ge v8, v7, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/16 v8, 0x31

    if-eqz v1, :cond_2

    .line 83
    div-int/2addr v5, v0

    sub-int/2addr v6, v5

    aget v0, v2, v4

    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {v10, v8, v6, v0}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 91
    :cond_2
    div-int/2addr v5, v0

    sub-int/2addr v6, v5

    aget v9, v2, v4

    iget v0, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v0

    sub-int/2addr v9, v7

    invoke-virtual {v10, v8, v6, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 96
    :goto_0
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    return v4

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;--->showLongClickText(Landroid/view/View;Ljava/lang/CharSequence;)Z"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
