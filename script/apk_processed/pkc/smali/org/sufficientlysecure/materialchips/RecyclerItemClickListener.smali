.class public Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnoreTouch:Z

.field private mListener:Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mIgnoreTouch:Z

    .line 20
    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mListener:Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;

    .line 21
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$1;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$1;-><init>(Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 31
    iget-boolean v0, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mIgnoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mListener:Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 36
    iget-object p2, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mListener:Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;->mIgnoreTouch:Z

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
