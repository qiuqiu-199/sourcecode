.class public Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;
.super Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;
.source "StatusIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 36
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f010016

    .line 39
    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setInAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f01001b

    .line 40
    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 44
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v0, 0x7f0c00f4

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v4, 0x7f010016

    .line 47
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setInAnimation(Landroid/view/animation/Animation;)V

    const v4, 0x7f01001b

    .line 48
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setDisplayedChild(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 53
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->getDisplayedChild()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 54
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(I)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;--->setDisplayedChild(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 59
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;--->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
