.class public Lcom/getbase/floatingactionbutton/TouchDelegateGroup;
.super Landroid/view/TouchDelegate;
.source "TouchDelegateGroup.java"


# static fields
.field private static final USELESS_HACKY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mCurrentTouchDelegate:Landroid/view/TouchDelegate;

.field private mEnabled:Z

.field private final mTouchDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTouchDelegates()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 39
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 55
    :pswitch_0
    iget-object v2, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    goto :goto_1

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 61
    iput-object v2, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    move-object v2, v0

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v4, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 46
    iget-object v4, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/TouchDelegate;

    .line 47
    invoke-virtual {v4, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    iput-object v4, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 65
    invoke-virtual {v2, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mEnabled:Z

    return-void
.end method
