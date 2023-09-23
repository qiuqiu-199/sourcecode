.class public Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;
.super Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.source "EmailEditText.java"


# instance fields
.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 34
    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;)V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->textWatcher:Landroid/text/TextWatcher;

    .line 35
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->init()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 39
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;)V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->textWatcher:Landroid/text/TextWatcher;

    .line 40
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->init()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 44
    invoke-direct {v0, v1, v2, p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;)V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->textWatcher:Landroid/text/TextWatcher;

    .line 45
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->init()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private init()V
    .locals 4

    move-object/16 v1, p0

    const/16 v0, 0x21

    .line 49
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->setInputType(I)V

    .line 50
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->reenableKeyboardSuggestions()V

    .line 52
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->initAdapter()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;--->init()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initAdapter()V
    .locals 7

    move-object/16 v4, p0

    const/4 v0, 0x1

    .line 74
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->setThreshold(I)V

    .line 75
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    .line 76
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getPossibleUserEmails()Ljava/util/List;

    move-result-object v2

    const v3, 0x1090009

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 75
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;--->initAdapter()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private reenableKeyboardSuggestions()V
    .locals 5

    move-object/16 v2, p0

    .line 84
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getInputType()I

    move-result v0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 86
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->setRawInputType(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;--->reenableKeyboardSuggestions()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
