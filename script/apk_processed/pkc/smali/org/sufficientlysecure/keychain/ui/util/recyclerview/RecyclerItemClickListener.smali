.class public Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnoreTouch:Z

.field private mListener:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 39
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mIgnoreTouch:Z

    .line 40
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mListener:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;

    .line 41
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$1;-><init>(Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;)V

    invoke-direct {v3, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 51
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mIgnoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mListener:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mListener:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-interface {v5, v0, v4}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    const/4 v4, 0x1

    return v4

    :cond_1
    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;--->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 69
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;->mIgnoreTouch:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;--->onRequestDisallowInterceptTouchEvent(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;--->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
