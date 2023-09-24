.class public Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;
.super Landroid/widget/Spinner;
.source "FocusFirstItemSpinner.java"


# instance fields
.field private mToggleFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 59
    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 55
    invoke-direct {v0, v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;---><init>(Landroid/content/Context;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 51
    invoke-direct {v0, v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 47
    invoke-direct {v0, v1, v2, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 42
    invoke-direct {v0, v1, v2, p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getSelectedItemPosition()I
    .locals 4

    move-object/16 v1, p0

    .line 64
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    invoke-super {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;--->getSelectedItemPosition()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public performClick()Z
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    .line 73
    invoke-super {v2}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;--->performClick()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/util/spinner/FocusFirstItemSpinner;->mToggleFlag:Z

    return v0
.end method
