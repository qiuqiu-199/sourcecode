.class Lorg/sufficientlysecure/donations/DonationsFragment$10;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/donations/DonationsFragment;->buildFlattrView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/donations/DonationsFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$10;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
