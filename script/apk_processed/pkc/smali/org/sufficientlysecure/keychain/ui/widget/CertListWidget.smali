.class public Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;
.super Landroid/widget/ViewAnimator;
.source "CertListWidget.java"


# instance fields
.field private vCollapsed:Landroid/widget/TextView;

.field private vExpandButton:Landroid/view/View;

.field private vExpanded:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 38
    invoke-direct {v0, v1, v2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    move-object/16 v2, p0

    .line 43
    invoke-super {v2}, Landroid/widget/ViewAnimator;->onFinishInflate()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;--->onFinishInflate()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900c5

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vCollapsed:Landroid/widget/TextView;

    const v1, 0x7f0900c7

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vExpanded:Landroid/widget/ListView;

    const v1, 0x7f0900c6

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vExpandButton:Landroid/view/View;

    .line 51
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vExpandButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vExpandButton:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget$1;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setData(Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;Z)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move/16 v9, p2

    if-eqz v8, :cond_1

    .line 74
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;->creation()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/high16 v6, 0x80000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v9, :cond_0

    .line 76
    iget-object v9, v7, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vCollapsed:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You created this identity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v9, v7, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vCollapsed:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You verified and confirmed this identity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->vCollapsed:Landroid/widget/TextView;

    const-string v9, "This identity is not yet verified or confirmed."

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;--->setData(Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setExpanded(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 68
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->setDisplayedChild(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;--->setExpanded(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method toggleExpanded()V
    .locals 5

    move-object/16 v2, p0

    .line 64
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->setDisplayedChild(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;--->toggleExpanded()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
