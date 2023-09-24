.class public Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;
.super Ljava/lang/Object;
.source "ImportKeysExtraBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setKeyId(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 57
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v2, :cond_0

    .line 60
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v0, 0x7f110d34

    .line 63
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;--->setKeyId(Landroid/widget/TextView;Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setStatus(Landroid/widget/ImageView;ZZZ)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    move/16 p0, p3

    .line 41
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060051

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    .line 44
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v3, v2, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 47
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v3, v2, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 50
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v3, v2, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    :cond_2
    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;--->setStatus(Landroid/widget/ImageView;ZZZ)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setUserIds(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    move-object/16 v14, p2

    .line 71
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz v13, :cond_1

    .line 74
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    invoke-static {v0, v14}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->getHighlighter(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    move-result-object v14

    .line 78
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 82
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0c0086

    .line 84
    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 86
    invoke-virtual {v14, v2}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    .line 87
    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const v7, 0x7f040089

    .line 88
    invoke-static {v0, v7}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 92
    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x10

    .line 95
    invoke-static {v0, v10}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v10

    .line 96
    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v11

    .line 94
    invoke-virtual {v9, v10, v8, v11, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    invoke-virtual {v14, v6}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {v0, v7}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;--->setUserIds(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
