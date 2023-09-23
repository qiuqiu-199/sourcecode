.class interface abstract Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;
.super Ljava/lang/Object;
.source "RemoteSelectIdentityKeyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RemoteSelectIdentityKeyView"
.end annotation


# virtual methods
.method public abstract displayOverflowMenu()V
.end method

.method public abstract finishAndReturn(J)V
.end method

.method public abstract finishAsCancelled()V
.end method

.method public abstract highlightKey(I)V
.end method

.method public abstract launchImportOperation(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V
.end method

.method public abstract setAddressText(Ljava/lang/String;)V
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

.method public abstract setShowAutocryptHint(Z)V
.end method

.method public abstract setTitleClientIconAndName(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
.end method

.method public abstract showImportInternalError()V
.end method

.method public abstract showLayoutEmpty()V
.end method

.method public abstract showLayoutGenerateOk()V
.end method

.method public abstract showLayoutGenerateProgress()V
.end method

.method public abstract showLayoutGenerateSave()V
.end method

.method public abstract showLayoutImportExplanation()V
.end method

.method public abstract showLayoutSelectKeyList()V
.end method

.method public abstract showLayoutSelectNoKeys()V
.end method

.method public abstract showOpenKeychainIntent()V
.end method
