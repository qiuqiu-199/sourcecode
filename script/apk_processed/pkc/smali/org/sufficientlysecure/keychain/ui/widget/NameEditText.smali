.class public Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;
.super Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.source "NameEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 30
    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->init()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 35
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->init()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 40
    invoke-direct {v0, v1, v2, p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->init()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private init()V
    .locals 3

    move-object/16 v0, p0

    .line 45
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->reenableKeyboardSuggestions()V

    .line 46
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->initAdapter()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;--->init()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initAdapter()V
    .locals 7

    move-object/16 v4, p0

    const/4 v0, 0x1

    .line 50
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->setThreshold(I)V

    .line 51
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 52
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    .line 53
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getPossibleUserNames()Ljava/util/List;

    move-result-object v2

    const v3, 0x1090009

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;--->initAdapter()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private reenableKeyboardSuggestions()V
    .locals 5

    move-object/16 v2, p0

    .line 61
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->getInputType()I

    move-result v0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 63
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->setRawInputType(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;--->reenableKeyboardSuggestions()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
