.class Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "TwoWayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 6646
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .line 6646
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 6649
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 6651
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    .line 6652
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    if-nez v0, :cond_0

    goto :goto_2

    .line 6660
    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 6664
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 6665
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    const/16 p1, 0x8

    .line 6666
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 6668
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6671
    :goto_0
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    .line 6672
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6673
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 6676
    :cond_3
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x20

    .line 6677
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6678
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 6684
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 6688
    :cond_0
    iget-object p3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p3, p1}, Lorg/lucasr/twowayview/TwoWayView;->getPositionForView(Landroid/view/View;)I

    move-result p3

    .line 6689
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p3, v2, :cond_c

    if-nez v1, :cond_1

    goto :goto_3

    .line 6697
    :cond_1
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v4}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 6701
    :cond_2
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, p3}, Lorg/lucasr/twowayview/TwoWayView;->getItemIdAtPosition(I)J

    move-result-wide v4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_9

    const/16 v1, 0x8

    if-eq p2, v1, :cond_7

    const/16 v1, 0x10

    if-eq p2, v1, :cond_5

    const/16 v1, 0x20

    if-eq p2, v1, :cond_3

    return v3

    .line 6722
    :cond_3
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p2}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {p2, p1, p3, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->access$4000(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6719
    :cond_5
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p2}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p2, p1, p3, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 6705
    :cond_7
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result p1

    if-ne p1, p3, :cond_8

    .line 6706
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p1, v2}, Lorg/lucasr/twowayview/TwoWayView;->setSelection(I)V

    return v0

    :cond_8
    return v3

    .line 6712
    :cond_9
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, p3, :cond_a

    .line 6713
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p1, p3}, Lorg/lucasr/twowayview/TwoWayView;->setSelection(I)V

    return v0

    :cond_a
    return v3

    :cond_b
    :goto_2
    return v3

    :cond_c
    :goto_3
    return v3
.end method
