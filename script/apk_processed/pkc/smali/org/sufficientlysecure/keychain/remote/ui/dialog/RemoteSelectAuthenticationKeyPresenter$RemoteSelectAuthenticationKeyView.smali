.class interface abstract Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;
.super Ljava/lang/Object;
.source "RemoteSelectAuthenticationKeyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RemoteSelectAuthenticationKeyView"
.end annotation


# virtual methods
.method public abstract finish(J)V
.end method

.method public abstract finishAsCancelled()V
.end method

.method public abstract setActiveItem(Ljava/lang/Integer;)V
.end method

.method public abstract setEnableSelectButton(Z)V
.end method

.method public abstract setKeyListData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V
.end method
