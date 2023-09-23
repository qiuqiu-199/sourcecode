.class public Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;
.super Ljava/lang/Object;
.source "ImportKeysBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setCreation(Landroid/widget/TextView;Ljava/util/Date;Z)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 76
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-eqz v3, :cond_0

    .line 80
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v0, v4}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->getColor(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;--->setCreation(Landroid/widget/TextView;Ljava/util/Date;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setUserEmail(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLjava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 63
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v2, :cond_0

    const-string v2, ""

    .line 69
    :cond_0
    invoke-static {v0, p0}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->getHighlighter(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    move-result-object p0

    .line 70
    invoke-virtual {p0, v2}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->getColor(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;--->setUserEmail(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLjava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setUserId(Landroid/widget/TextView;Ljava/lang/CharSequence;ZZLjava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 38
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v4, :cond_0

    const v4, 0x7f110d45

    .line 42
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v5, :cond_1

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110c55

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v0, p1}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->getHighlighter(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v4}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    .line 51
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {v0, p0}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->getColor(Landroid/content/Context;Z)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_2

    const/high16 v4, -0x10000

    .line 55
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;--->setUserId(Landroid/widget/TextView;Ljava/lang/CharSequence;ZZLjava/lang/String;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
