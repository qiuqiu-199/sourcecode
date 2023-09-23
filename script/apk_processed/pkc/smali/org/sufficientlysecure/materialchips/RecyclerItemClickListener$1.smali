.class Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$1;->this$0:Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
