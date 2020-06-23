//
//  String+Localization.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

extension String {
    
    // =========================================== Use of data =============================================
    static let lpaAlertUseOfDataTitle = NSLocalizedString("Utilisation de données",
                                                          comment: "Title label in UseOfData screen")
    static let lpaAlertUseOfDataMessageTitle = NSLocalizedString("""
L’application LPA&CO ne peut pas être utilisée sans ces informations. \
Pour continuer, merci de bien vouloir accepter l’utilisation de données.
""",
                                                                 comment: "Message text in useOfData error alert screen")
    static let lpaAlertUserOfDataPrimaryButtonTitle =
        NSLocalizedString("Retour", comment: "Button title in useOfData error alert screen")
    
    // =========================================== Tutorial =================================================
    
    // Step 1
    static let tutorialStep1Title = NSLocalizedString("Le bon plan parking à lyon et alentours",
                                                      comment: "Tutorial step 1 title")
    static let tutorialStep1Subtitle = NSLocalizedString("""
Grâce au réseau lyonnais LPA&CO, trouvez facilement un parking, là où vous en avez besoin.
""", comment: "Tutorial step 1 subtitle")
    
    // Step 2
    static let tutorialStep2Title = NSLocalizedString("""
Des place à l'heure... ou au mois !
""", comment: "Tutorial step 2 title")
    static let tutorialStep2Subtitle = NSLocalizedString("""
Que vous ayez un besoin ponctuel ou régulier, réservez votre place pour la durée que vous voulez.
""", comment: "Tutorial step 2 subtitle")
    
    // Step 3
    static let tutorialStep3Title = NSLocalizedString("Votre application comme télécommande !",
                                                      comment: "Tutorial step 3 title")
    static let tutorialStep3Subtitle = NSLocalizedString("""
Entrez et sortez de votre parking grâce à votre smartphone !
""", comment: "Tutorial step 3 subtitle")
    
    // Step 4
    static let tutorialStep4Title = NSLocalizedString("Titre assitance",
                                                      comment: "Tutorial step 4 title")
    static let tutorialStep4Subtitle = NSLocalizedString("Descriptif assistance",
                                                         comment: "Tutorial step 4 subtitle")
    
    // Tutorial buttons
    static let tutorialButtonNextTitle = NSLocalizedString("Suivant",
                                                           comment: "Button title in tutorial screen")
    static let tutorialButtonGoButtonTitle = NSLocalizedString("C’est parti !",
                                                               comment: "Button title in tutorial screen for last step")
    
    // =========================================== Authentication ===========================================
    static let lpaAlertAuthenticationMessageTitle =
        NSLocalizedString("Votre compte LPA Connect a bien été créé.",
                          comment: "Message title in authentication success alert")
    
    static let lpaAlertAuthenticationMessageSubtitle = NSLocalizedString("""
Vous allez recevoir un email afin de valider votre compte. \
Merci de bien vouloir cliquer sur le lien présent dans cet email pour valider votre compte.
""", comment: "Message subtitle in authentication success alert")
    static let lpaAlertAuthenticationPrimaryButtonTitle =
        NSLocalizedString("Se connecter", comment: "Button title in authentication success alert")
    
    struct More {
        static let menuProfileTitle = NSLocalizedString("Mon profil", comment: "More Tab Menu entry profile")
        static let menuVehiclesTitle = NSLocalizedString("Mes véhicules", comment: "More Tab Menu entry vehicles")
        static let menuPaymentTitle = NSLocalizedString("Mon moyen de paiement", comment: "More Tab Menu entry payment methods")
        static let menuOrdersTitle = NSLocalizedString("Mes commandes", comment: "More Tab Menu entry my orders")
        static let menuSettingsTitle = NSLocalizedString("Mes paramètres", comment: "More Tab Menu entry settings")
        static let menuHelpTitle = NSLocalizedString("Contact et assistance", comment: "More Tab Menu entry contact")
        static let menuFaqTitle = NSLocalizedString("FAQ", comment: "More Tab Menu entry FAQ")
        static let menuSubscriptionInfoTitle = NSLocalizedString("Mode d'emploi abonnements", comment: "More Tab Menu entry subscription information")
        static let menuReservationInfoTitle = NSLocalizedString("Mode d'emploi réservations à l'heure", comment: "More Tab Menu entry reservation information")
        static let menuCgvTitle = NSLocalizedString("CGV", comment: "More Tab Menu entry General Terms & Conditions of Sale")
    }
    
}
