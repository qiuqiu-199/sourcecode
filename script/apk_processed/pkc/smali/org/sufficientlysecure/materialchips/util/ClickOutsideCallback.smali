.class public Lorg/sufficientlysecure/materialchips/util/ClickOutsideCallback;
.super Lorg/sufficientlysecure/materialchips/util/DelegateWindowCallback;
.source "ClickOutsideCallback.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Landroid/app/Activity;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/materialchips/util/DelegateWindowCallback;-><init>(Landroid/view/Window$Callback;)V

    .line 19
    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/util/ClickOutsideCallback;->activity:Landroid/app/Activity;

    return-void
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/util/ClickOutsideCallback;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/util/ClickOutsideCallback;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 26
    instance-of v1, v0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    move-object v1, v0

    check-cast v1, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    invoke-virtual {v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->fadeOut()V

    .line 33
    :cond_0
    instance-of v1, v0, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    if-eqz v1, :cond_1

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    .line 37
    invoke-virtual {v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->isFilterableListVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    invoke-direct {p0, v0}, Lorg/sufficientlysecure/materialchips/util/ClickOutsideCallback;->hideKeyboard(Landroid/view/View;)V

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lorg/sufficientlysecure/materialchips/util/DelegateWindowCallback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
