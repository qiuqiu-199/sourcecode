.class public Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;
.source "ShowNfcSweetspotActivity.java"


# static fields
.field public static final EXTRA_TOKEN_INFO:Ljava/lang/String; = "token_info"


# instance fields
.field private sweetspotCircle1:Landroid/view/View;

.field private sweetspotCircle2:Landroid/view/View;

.field private sweetspotCircle3:Landroid/view/View;

.field private sweetspotIcon:Landroid/view/View;

.field private sweetspotIndicator:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 39
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotIndicator:Landroid/view/View;

    return-object p0
.end method

.method private getDisplaySize()Landroid/util/DisplayMetrics;
    .locals 5

    move-object/16 v2, p0

    .line 129
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->getDisplaySize()Landroid/util/DisplayMetrics;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static hasSweetspotData()Z
    .locals 5

    .line 136
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/NfcSweetspotData;->SWEETSPOT_DATA:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->hasSweetspotData()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finish()V
    .locals 5

    move-object/16 v2, p0

    .line 103
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->finish()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->finish()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f010019

    const v1, 0x7f01001e

    .line 105
    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected initTheme()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->initTheme()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 50
    invoke-super {v6, v7}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f010019

    const v0, 0x7f01001e

    .line 52
    invoke-virtual {v6, v7, v0}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->overridePendingTransition(II)V

    const v7, 0x7f0c00ee

    .line 54
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->setContentView(I)V

    const v7, 0x7f090258

    .line 55
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotIndicator:Landroid/view/View;

    .line 57
    sget-object v7, Lorg/sufficientlysecure/keychain/securitytoken/NfcSweetspotData;->SWEETSPOT_DATA:Ljava/util/Map;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    if-nez v7, :cond_0

    .line 59
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v0, "No data available for this model. This activity should not be called!"

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 61
    :cond_0
    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->getDisplaySize()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 63
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 64
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v0

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-float v7, v2

    .line 66
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotIndicator:Landroid/view/View;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;

    invoke-direct {v2, v6, v1, v7}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;FF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const v7, 0x7f090257

    .line 74
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotIcon:Landroid/view/View;

    const v7, 0x7f090254

    .line 75
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle1:Landroid/view/View;

    const v7, 0x7f090255

    .line 76
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle2:Landroid/view/View;

    const v7, 0x7f090256

    .line 77
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle3:Landroid/view/View;

    .line 79
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotIcon:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 80
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle1:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle2:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 82
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle3:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 10

    move-object/16 v7, p0

    .line 87
    invoke-super {v7}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onEnterAnimationComplete()V

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->onEnterAnimationComplete()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 90
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 91
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle1:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 92
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x2bc

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 93
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->sweetspotCircle3:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 110
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "token_info"

    .line 111
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 112
    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 118
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    .line 119
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->setResult(I)V

    .line 120
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->finish()V

    return v1

    .line 124
    :cond_0
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;--->onTouchEvent(Landroid/view/MotionEvent;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
